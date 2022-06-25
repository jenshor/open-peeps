import 'package:open_peeps_models/open_peeps_models.dart';
import 'package:test/test.dart';

void main() {
  group(
    '$PeepAtom',
    () {
      test(
        'equals',
        () {
          const name = 'Test';
          const directory = 'test';
          const height = 1.0;
          const width = 1.0;
          expect(
            PeepAtom(
              name: name,
              directoryName: directory,
              imageHeight: height,
              imageWidth: width,
            ),
            equals(
              PeepAtom(
                name: name,
                directoryName: directory,
                imageHeight: height,
                imageWidth: width,
              ),
            ),
          );
        },
      );
    },
  );
}
