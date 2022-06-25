import 'package:flutter/material.dart';
import 'package:open_peeps/open_peeps.dart';

class AvatarGridRow extends StatelessWidget {
  const AvatarGridRow({
    super.key,
    this.backgroundColor,
  });

  final Color? backgroundColor;

  static const size = 128.0;

  @override
  Widget build(BuildContext context) {
    final generator = PeepGenerator();
    return Row(
      children: Iterable.generate(
        5,
        (_) => Padding(
          padding: const EdgeInsets.all(16),
          child: PeepAvatar.fromPeep(
            size: size,
            backgroundColor: backgroundColor,
            peep: generator.generate(
              accessory: Accessories.atoms.first,
              facialHair: FacialHair.atoms.first,
            ),
          ),
        ),
      ).toList(),
    );
  }
}

class AvatarGrid extends StatelessWidget {
  const AvatarGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        AvatarGridRow(
          backgroundColor: Color(0xFF99d3a8),
        ),
        AvatarGridRow(
          backgroundColor: Color(0xFFa9dbda),
        ),
        AvatarGridRow(
          backgroundColor: Color(0xFFe6c7f3),
        ),
        AvatarGridRow(
          backgroundColor: Color(0xFFfacca9),
        ),
        AvatarGridRow(
          backgroundColor: Color(0xFFf0a6ab),
        ),
      ],
    );
  }
}
