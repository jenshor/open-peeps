import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:open_peeps/open_peeps.dart';
import 'package:open_peeps/src/studio/widgets/atom_tile.dart';

import '../helpers.dart';

mixin OnChangedFunction {
  void call(Peep peep);
}

class OnChangedMock extends Mock implements OnChangedFunction {}

class PeepFake extends Fake implements Peep {}

void testOnChangedCalled({
  required PeepAtom atom,
}) {
  testWidgets(
    'calls onChanged when ${atom.name} is clicked',
    (tester) async {
      final onChangedMock = OnChangedMock();
      await tester.pumpWithMaterial(
        PeepStudio(
          onChanged: onChangedMock,
        ),
      );

      final atomTiles = find
          .byWidgetPredicate(
            (widget) => widget is AtomTile && widget.peepAtom == atom,
          )
          .evaluate()
          .toList();

      expect(atomTiles, isNotEmpty);
      final atomTile = atomTiles.first;

      await tester.tapAt(
        tester.getCenter(
          find.byWidget(atomTile.widget),
        ),
      );
      verify(
        () => onChangedMock(
          any(),
        ),
      ).called(1);
    },
  );
}

void main() {
  setUpAll(() {
    registerFallbackValue(PeepFake());
  });

  group(
    '$PeepStudio',
    () {
      testWidgets(
        'shows widget',
        (tester) async {
          await tester.pumpWithMaterial(
            PeepStudio(
              onChanged: (peep) {},
            ),
          );
        },
      );

      testOnChangedCalled(atom: Head.atoms.first);
      testOnChangedCalled(atom: Face.atoms.first);
      // We use the second item here because the first one is always an empty
      // atom.
      // This can impact with the test result.
      // Therefore, we are using an atom which has a unique name (and
      // appearance).
      testOnChangedCalled(atom: FacialHair.atoms.skip(1).first);
      testOnChangedCalled(atom: Accessories.atoms.skip(1).first);

      testWidgets(
        'calls onChanged when head is clicked',
        (tester) async {
          final onChangedMock = OnChangedMock();
          await tester.pumpWithMaterial(
            PeepStudio(
              onChanged: onChangedMock,
            ),
          );

          final atomTiles = find
              .byWidgetPredicate(
                (widget) =>
                    widget is AtomTile && widget.peepAtom == Head.atoms.first,
              )
              .evaluate()
              .toList();

          expect(atomTiles, isNotEmpty);
          final atomTile = atomTiles.first;

          await tester.tapAt(
            tester.getCenter(
              find.byWidget(atomTile.widget),
            ),
          );
          verify(
            () => onChangedMock(
              any(),
            ),
          ).called(1);
        },
      );
    },
  );
}
