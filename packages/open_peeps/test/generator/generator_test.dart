import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:open_peeps/open_peeps.dart';

class RandomMock extends Mock implements Random {}

void main() {
  const headIndex = 1;
  const faceIndex = 2;
  const facialHairIndex = 3;
  const accessoryIndex = 4;

  final random = RandomMock();
  when(() => random.nextInt(Head.atoms.length - 1)).thenReturn(
    headIndex,
  );
  when(() => random.nextInt(Face.atoms.length - 1)).thenReturn(
    faceIndex,
  );
  when(() => random.nextInt(FacialHair.atoms.length - 1)).thenReturn(
    facialHairIndex,
  );
  when(() => random.nextInt(Accessories.atoms.length - 1)).thenReturn(
    accessoryIndex,
  );

  group(
    '$PeepGenerator',
    () {
      test(
        '.generate() generates full-random $Peep',
        () {
          final instance = PeepGenerator(random: random);
          final peep = instance.generate();

          expect(
            peep,
            equals(
              Peep(
                head: Head.atoms[headIndex],
                face: Face.atoms[faceIndex],
                facialHair: FacialHair.atoms[facialHairIndex],
                accessory: Accessories.atoms[accessoryIndex],
              ),
            ),
          );
        },
      );

      test(
        '.generate() generates partially-random $Peep',
        () {
          const fixedIndex = 3;
          final instance = PeepGenerator(random: random);
          final peep = instance.generate(
            head: Head.atoms[fixedIndex],
            face: Face.atoms[fixedIndex],
          );

          expect(
            peep,
            equals(
              Peep(
                head: Head.atoms[fixedIndex],
                face: Face.atoms[fixedIndex],
                facialHair: FacialHair.atoms[facialHairIndex],
                accessory: Accessories.atoms[accessoryIndex],
              ),
            ),
          );
        },
      );
    },
  );
}
