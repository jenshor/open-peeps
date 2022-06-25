import 'dart:math';

import 'package:flutter/material.dart';
import 'package:open_peeps/open_peeps.dart';

class AvatarAnimation extends StatefulWidget {
  const AvatarAnimation({super.key});

  @override
  State<AvatarAnimation> createState() => _AvatarAnimationState();
}

class _AvatarAnimationState extends State<AvatarAnimation>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  late List<List<Widget>> peepAvatars;

  static const int numberOfElements = 15;
  static const int rows = numberOfElements;
  static const int columns = numberOfElements;

  @override
  void initState() {
    super.initState();
    final generator = PeepGenerator();
    peepAvatars = List<List<Widget>>.empty(growable: true)
      ..addAll(
        Iterable.generate(
          columns,
          (_) => List<Widget>.empty(growable: true),
        ),
      );
    for (var row = 0; row < rows; row++) {
      for (var column = 0; column < columns; column++) {
        final peep = generator.generate(
          facialHair: FacialHair.atoms.first,
          accessory: Accessories.atoms.first,
        );

        peepAvatars[row].add(
          PeepAvatar.fromPeep(
            size: 128,
            peep: peep,
          ),
        );
      }
    }

    controller = AnimationController(
      duration: const Duration(seconds: 30),
      reverseDuration: const Duration(seconds: 30),
      vsync: this,
    );

    animation = Tween<double>(begin: 0, end: -400).animate(controller)
      ..addListener(() {
        setState(() {});
      });

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller
          ..reset()
          ..forward();
      }
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    const size = 128.0;
    const offset = size / 8;
    const totalSize = size + offset;
    final rowHeight = (size / sqrt(3)) / 2 + size / 2 + offset;

    return SizedBox(
      width: 1000,
      height: 1000,
      child: Stack(
        children: [
          for (int row = 0; row < rows; row++)
            for (int column = 0; column < columns; column++)
              Positioned(
                top: rowHeight * row + animation.value,
                left: (row.isEven ? totalSize / 2 : 0) +
                    totalSize * column +
                    animation.value,
                child: peepAvatars[row][column],
              ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
