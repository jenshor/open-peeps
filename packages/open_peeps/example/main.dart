import 'package:open_peeps/open_peeps.dart';

// Creates a new `Peep` instance
final peep = Peep(
  head: Head.atoms.first,
  face: Face.atoms.first,
  facialHair: FacialHair.atoms.first,
  accessory: Accessories.atoms.first,
);

// Serializes a peep into a single `int`
final value = PeepSerializer.serializeVersion1(
  peep: peep,
);

// Deserializes a peep from an `int`
final originalPeep = PeepSerializer.deserializeVersion1(
  value: value,
);

// Generates a random peep with a fixed `head` atom.
final randomPeep = PeepGenerator().generate(
  head: originalPeep.head,
);
