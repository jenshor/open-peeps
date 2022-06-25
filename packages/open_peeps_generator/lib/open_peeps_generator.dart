import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:open_peeps_generator/extensions.dart';
import 'package:open_peeps_models/open_peeps_models.dart';
import 'package:path/path.dart' as path;

// TODO put this into better place
enum ImageInformation {
  width,
  height,
}

class Generator {
  Generator({
    this.fileSystem = const LocalFileSystem(),
  });

  final FileSystem fileSystem;

  static const String pathToPackage = '../open_peeps';
  String get pathToAssets => path.join(
        pathToPackage,
        'assets',
      );
  String get pathToAtoms => path.join(
        pathToAssets,
        'atoms',
      );
  String get pathToPackageAtoms => path.join(
        pathToPackage,
        'lib',
        'src',
        'atoms',
      );

  double _getImageInformation({
    required String content,
    required ImageInformation information,
  }) {
    late RegExp regex;
    switch (information) {
      case ImageInformation.width:
        regex = RegExp(r'(?<=width=")\d+(?!=px)');
        break;
      case ImageInformation.height:
        regex = RegExp(r'(?<=height=")\d+(?!=px)');
        break;
    }

    final match = regex.stringMatch(content);
    return double.parse(match!);
  }

  Iterable<PeepAtom> _getPeepAtomsFromDirectory({
    required Directory directory,
  }) sync* {
    final files = directory
        .listSync(recursive: true)
        .whereType<File>()
        .where((file) => file.path.endsWith('.svg'));

    for (final file in files) {
      final nameWithExtension = file.basename;
      final name = nameWithExtension.replaceAll('.svg', '');

      final content = file.readAsStringSync();

      yield PeepAtom(
        name: name,
        directoryName: directory.basename,
        imageWidth: _getImageInformation(
          content: content,
          information: ImageInformation.width,
        ),
        imageHeight: _getImageInformation(
          content: content,
          information: ImageInformation.height,
        ),
      );
    }
  }

  String _getAtomTypeClassName({required String directoryName}) {
    final nameElements = directoryName.split('-');
    final capitalizedElements =
        nameElements.map((e) => e.toLowerCase().capitalize()).toList();
    return capitalizedElements.join();
  }

  void _generateImportFileFromAtoms({
    required Iterable<PeepAtom> atoms,
    required Directory directory,
  }) {
    final list = atoms.toList()
      ..sort(
        (a, b) => a.name.compareTo(b.name),
      );

    final directoryName = directory.basename;
    final filePath = path.join(
      pathToPackageAtoms,
      directoryName.toLowerCase().replaceAll(
            '-',
            '_',
          ),
    );

    final listInstance = list
        .map(
          (e) => e.toCodeInstance(),
        )
        .join(',');
    final atomTypeClassName = _getAtomTypeClassName(
      directoryName: directoryName,
    );

    final atomClass = Class(
      (builder) => builder
        ..name = atomTypeClassName
        ..methods.add(
          Method(
            (methodBuilder) => methodBuilder
              ..name = 'atomsMap'
              ..static = true
              ..returns = refer('Map<int, $PeepAtom>')
              ..lambda = true
              ..body = const Code(
                '{for (var e in atoms) e.hashCode: e}',
              ),
          ),
        )
        ..fields.add(
          Field(
            (fieldBuilder) => fieldBuilder
              ..name = 'atoms'
              ..static = true
              ..type = refer(
                'List<$PeepAtom>',
              )
              ..assignment = Code(
                '[$listInstance]',
              ),
          ),
        ),
    );

    final emitter = DartEmitter();

    fileSystem.file('$filePath.dart')
      ..createSync(recursive: true)
      ..writeAsStringSync('// coverage:ignore-file\n')
      ..writeAsStringSync(
        '// GENERATED CODE - DO NOT MODIFY BY HAND\n\n',
        mode: FileMode.append,
      )
      ..writeAsStringSync(
        "import 'package:open_peeps_models/open_peeps_models.dart';\n\n",
        mode: FileMode.append,
      )
      ..writeAsStringSync(
        DartFormatter().format(
          '${atomClass.accept(emitter)}',
        ),
        mode: FileMode.append,
      );
  }

  Future<void> generate() async {
    final atomsDirectory = fileSystem.directory(pathToAtoms);

    final directories = atomsDirectory.listSync().whereType<Directory>();

    for (final directory in directories) {
      final atoms = _getPeepAtomsFromDirectory(directory: directory);
      _generateImportFileFromAtoms(atoms: atoms, directory: directory);
    }
  }
}
