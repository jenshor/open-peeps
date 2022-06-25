import 'package:open_peeps/open_peeps.dart';
import 'package:test/test.dart';

void main() {
  group(
    '$PeepSerializer',
    () {
      test(
        'serialize and deserialize return the original [$Peep]',
        () {
          final head = Head.atoms[10];
          final face = Face.atoms[10];
          final facialHair = FacialHair.atoms[10];
          final accessory = Accessories.atoms[5];
          final peep = Peep(
            head: head,
            face: face,
            facialHair: facialHair,
            accessory: accessory,
          );

          final serializedPeep = PeepSerializer.serializeVersion1(
            peep: peep,
          );
          final deserializedPeep = PeepSerializer.deserializeVersion1(
            value: serializedPeep,
          );

          expect(
            peep,
            deserializedPeep,
          );
        },
      );
    },
  );
}
