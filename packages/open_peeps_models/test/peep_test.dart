import 'package:open_peeps_models/open_peeps_models.dart';
import 'package:test/test.dart';

void main() {
  group(
    '$Peep',
    () {
      test(
        'equals',
        () {
          final atom = PeepAtom(
            name: 'Test',
            directoryName: 'test',
            imageHeight: 1,
            imageWidth: 1,
          );
          expect(
            Peep(head: atom, face: atom, facialHair: atom, accessory: atom),
            equals(
              Peep(head: atom, face: atom, facialHair: atom, accessory: atom),
            ),
          );
        },
      );
    },
  );
}
