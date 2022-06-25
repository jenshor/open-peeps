import 'package:open_peeps/open_peeps.dart';
import 'package:widgetbook/widgetbook.dart';

class PeepUsecaseGenerator {
  Iterable<WidgetbookUseCase> generate({
    required String Function(
      PeepAtom head,
      PeepAtom face,
      PeepAtom facialHair,
      double size,
    )
        nameBuilder,
    List<PeepAtom> faces = const [],
    List<PeepAtom> heads = const [],
    List<PeepAtom> facialHairs = const [],
    List<double> sizes = const [64],
    List<PeepAtom> accessories = const [],
  }) sync* {
    var facesList = faces;
    var headsList = heads;
    var facialHairsList = facialHairs;
    var accessoriesList = accessories;

    final defaultFace = Face.atoms.elementAt(4);
    final defaultFacialHair = FacialHair.atoms.elementAt(10);
    final defaultHead = Head.atoms.first;
    final defaultAccessory = Accessories.atoms.elementAt(2);

    if (faces.isEmpty) {
      facesList = [defaultFace];
    }

    if (heads.isEmpty) {
      headsList = [defaultHead];
    }

    if (facialHairs.isEmpty) {
      facialHairsList = [defaultFacialHair];
    }

    if (accessories.isEmpty) {
      accessoriesList = [defaultAccessory];
    }

    for (final size in sizes) {
      for (final face in facesList) {
        for (final facialHair in facialHairsList) {
          for (final head in headsList) {
            for (final accessory in accessoriesList) {
              yield WidgetbookUseCase(
                name: nameBuilder(head, face, facialHair, size),
                builder: (context) {
                  return PeepAvatar.fromAtoms(
                    face: face,
                    facialHair: facialHair,
                    head: head,
                    size: size,
                    accessory: accessory,
                  );
                },
              );
            }
          }
        }
      }
    }
  }
}
