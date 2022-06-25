import 'package:open_peeps/open_peeps.dart';

/// A Serializer which does a lossless compression of a [Peep].
abstract class PeepSerializer {
  /// Serializes a [Peep] into a single integer.
  static int serializeVersion1({required Peep peep}) {
    final headIndex = Head.atoms.indexOf(
      peep.head,
    );
    final faceIndex = Face.atoms.indexOf(
      peep.face,
    );
    final facialHairIndex = FacialHair.atoms.indexOf(
      peep.facialHair,
    );
    final accessoryIndex = Accessories.atoms.indexOf(
      peep.accessory,
    );

    var uniquePeepId = 0;
    uniquePeepId ^= headIndex;
    uniquePeepId <<= 8;
    uniquePeepId ^= faceIndex;
    uniquePeepId <<= 8;
    uniquePeepId ^= facialHairIndex;
    uniquePeepId <<= 8;
    uniquePeepId ^= accessoryIndex;
    return uniquePeepId;
  }

  /// Deserializes a unique [Peep] id into the actual [Peep] for displaying.
  static Peep deserializeVersion1({
    required int value,
  }) {
    const moduloValue = 1 << 8;
    final accessoryIndex = (value >> 0) & 0xFF;
    final facialHairIndex = (value >> 8) % moduloValue;
    final faceIndex = (value >> 16) % moduloValue;
    final headIndex = (value >> 24) % moduloValue;

    final head = Head.atoms[headIndex];
    final face = Face.atoms[faceIndex];
    final facialHair = FacialHair.atoms[facialHairIndex];
    final accessory = Accessories.atoms[accessoryIndex];

    return Peep(
      head: head,
      face: face,
      facialHair: facialHair,
      accessory: accessory,
    );
  }
}
