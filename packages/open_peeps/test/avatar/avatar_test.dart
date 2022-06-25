import 'package:flutter_test/flutter_test.dart';
import 'package:open_peeps/open_peeps.dart';

import '../helpers.dart';

void main() {
  group(
    '$PeepAvatar',
    () {
      testWidgets(
        '.fromPeep() shows widget',
        (tester) async {
          await tester.pumpWithMaterial(
            PeepAvatar.fromPeep(
              peep: Peep(
                head: Head.atoms.first,
                face: Face.atoms.first,
                facialHair: FacialHair.atoms.first,
                accessory: Accessories.atoms.first,
              ),
            ),
          );
        },
      );
    },
  );
}
