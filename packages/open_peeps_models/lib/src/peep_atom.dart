import 'package:freezed_annotation/freezed_annotation.dart';

part 'peep_atom.freezed.dart';
part 'peep_atom.g.dart';

/// A peep can contain of a bunch of atoms.
/// These atoms represent structures of a person.
/// For instance: the head, the hair, ...
@freezed
class PeepAtom with _$PeepAtom {
  /// Creates a new instance of [PeepAtom]
  factory PeepAtom({
    required String name,
    required String directoryName,
    required double imageHeight,
    required double imageWidth,
  }) = _PeepAtom;

  PeepAtom._();

  /// Creates a [PeepAtom] instance from a json object.
  factory PeepAtom.fromJson(Map<String, dynamic> json) =>
      _$PeepAtomFromJson(json);

  /// Converts the instance to code.
  String toCodeInstance() {
    return """
$PeepAtom(
  name: '$name',
  directoryName: '$directoryName',
  imageHeight: $imageHeight,
  imageWidth: $imageWidth,
)""";
  }
}
