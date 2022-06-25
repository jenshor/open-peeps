import 'dart:math';

import 'package:open_peeps/open_peeps.dart';

/// A generator which allows to generate a randomized [Peep].
class PeepGenerator {
  /// Creates a new instance of [PeepGenerator].
  PeepGenerator({Random? random}) : random = random ?? Random();

  /// The random number generator
  final Random random;

  PeepAtom _generateFromAtoms({
    required List<PeepAtom> atoms,
  }) {
    final length = atoms.length;
    final number = random.nextInt(length - 1);
    return atoms[number];
  }

  /// Generates a random peep.
  ///
  /// Specify a head, face, facialHair and/or accessory [PeepAtom] to pre-set
  /// one or multiple of the atoms.
  Peep generate({
    PeepAtom? head,
    PeepAtom? face,
    PeepAtom? facialHair,
    PeepAtom? accessory,
  }) {
    final finalHead = head ??
        _generateFromAtoms(
          atoms: Head.atoms,
        );
    final finalFace = face ??
        _generateFromAtoms(
          atoms: Face.atoms,
        );
    final finalFacialHair = facialHair ??
        _generateFromAtoms(
          atoms: FacialHair.atoms,
        );
    final finalAccessory = accessory ??
        _generateFromAtoms(
          atoms: Accessories.atoms,
        );

    return Peep(
      head: finalHead,
      face: finalFace,
      facialHair: finalFacialHair,
      accessory: finalAccessory,
    );
  }
}
