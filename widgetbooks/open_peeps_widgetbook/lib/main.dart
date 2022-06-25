import 'package:flutter/material.dart';
import 'package:open_peeps/open_peeps.dart';
import 'package:open_peeps_widgetbook/avatar_animation.dart';
import 'package:open_peeps_widgetbook/peep_usecase_generator.dart';
import 'package:widgetbook/widgetbook.dart';

const double defaultSize = 256;

/// A darker background color
/// Is used for specifying the background of e.g., a `PeepAvatar`.
const darkSelectedColor = Color.fromARGB(255, 97, 97, 97);

/// A darker background color
/// Is used for specifying the background of e.g., a `PeepAvatar`.
const lightSelectedColor = Color.fromARGB(255, 232, 232, 232);

class WidgetbookHotReload extends StatelessWidget {
  const WidgetbookHotReload({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appInfo: AppInfo(name: 'Open Peeps'),
      devices: [
        const Device.special(
          name: 'Square',
          resolution: Resolution(
            nativeSize: DeviceSize(width: 1000, height: 1000),
            scaleFactor: 1,
          ),
        ),
      ],
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: ThemeData.light().copyWith(
            useMaterial3: true,
            cardTheme: const CardTheme(elevation: 0),
            toggleableActiveColor: lightSelectedColor,
          ),
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: ThemeData.dark().copyWith(
            useMaterial3: true,
            cardTheme: const CardTheme(elevation: 0),
            toggleableActiveColor: darkSelectedColor,
          ),
        ),
      ],
      categories: [
        WidgetbookCategory(
          name: '$PeepAvatar',
          widgets: [
            WidgetbookComponent(
              name: 'Size',
              useCases: PeepUsecaseGenerator().generate(
                nameBuilder: (head, face, facialHair, size) =>
                    size.toStringAsFixed(0),
                sizes: [32, 48, 64, 128, 256, 512],
              ).toList(),
            ),
            WidgetbookComponent(
              name: 'Heads',
              useCases: PeepUsecaseGenerator().generate(
                nameBuilder: (head, face, facialHair, size) => head.name,
                heads: Head.atoms,
                sizes: [defaultSize],
              ).toList(),
            ),
            WidgetbookComponent(
              name: 'Faces',
              useCases: PeepUsecaseGenerator().generate(
                nameBuilder: (head, face, facialHair, size) => face.name,
                faces: Face.atoms,
                sizes: [defaultSize],
              ).toList(),
            ),
            WidgetbookComponent(
              name: 'Facial Hair',
              useCases: PeepUsecaseGenerator().generate(
                nameBuilder: (head, face, facialHair, size) => facialHair.name,
                facialHairs: FacialHair.atoms,
                sizes: [defaultSize],
              ).toList(),
            ),
            WidgetbookComponent(
              name: 'Accessories',
              useCases: PeepUsecaseGenerator().generate(
                nameBuilder: (head, face, facialHair, size) => facialHair.name,
                accessories: Accessories.atoms,
                sizes: [defaultSize],
              ).toList(),
            )
          ],
        ),
        WidgetbookCategory(
          name: '$PeepStudio',
          widgets: [
            WidgetbookComponent(
              name: 'Test',
              useCases: [
                WidgetbookUseCase(
                  name: 'Test',
                  builder: (context) {
                    return PeepStudio(
                      onChanged: (peep) {},
                    );
                  },
                )
              ],
            ),
          ],
        ),
        WidgetbookCategory(
          name: 'Showcase',
          widgets: [
            WidgetbookComponent(
              name: 'Animation',
              useCases: [
                WidgetbookUseCase(
                  name: 'Test',
                  builder: (context) {
                    return const AvatarAnimation();
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

void main() {
  runApp(
    const WidgetbookHotReload(),
  );
}
