import 'package:flutter/material.dart';
import 'package:open_peeps/open_peeps.dart';

/// A profile picture-sized avatar of a [Peep].
class PeepAvatar extends StatelessWidget {
  /// Creates a new instance of [PeepAvatar] based on a [Peep].
  PeepAvatar.fromPeep({
    Key? key,
    required Peep peep,
    Color? backgroundColor,
    Clip? clipBehavior,
    double? size,
  }) : this.fromAtoms(
          key: key,
          face: peep.face,
          head: peep.head,
          accessory: peep.accessory,
          facialHair: peep.facialHair,
          backgroundColor: backgroundColor,
          clipBehavior: clipBehavior,
          size: size,
        );

  /// Creates a new instance of [PeepAvatar] based on individual [PeepAtom]s.
  const PeepAvatar.fromAtoms({
    super.key,
    required this.face,
    required this.head,
    required this.facialHair,
    required this.accessory,
    this.backgroundColor,
    Clip? clipBehavior,
    double? size,
  })  : assert(
          size == null || size <= 256,
          'Size cannot be greater than 256',
        ),
        clipBehavior = clipBehavior ?? Clip.antiAlias,
        size = size ?? defaultSize;

  /// The default size of a [PeepAvatar].
  /// Is used to scale the image if other sizes are required.
  static const double defaultSize = 64;

  /// An offset used to center the images within the avatar area.
  static const Offset offset = Offset(5, 2);

  /// Atom for a face
  final PeepAtom face;

  /// Atom for a head
  final PeepAtom head;

  /// Atom for facial hair
  final PeepAtom facialHair;

  /// Atom for an accessory
  final PeepAtom accessory;

  /// The size of the image
  final double size;

  /// Indicates if the image is clipped when atom is drawn outside view box.
  final Clip clipBehavior;

  /// The color of the [PeepAvatar].
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final relativeScale = size / defaultSize;

    return SizedBox(
      height: size,
      width: size,
      child: ClipOval(
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor ?? Theme.of(context).colorScheme.surface,
          ),
          padding: EdgeInsets.all(size * 0.125),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: offset.dx * relativeScale,
                top: offset.dy * relativeScale,
                child: PeepImage(
                  peepAtom: head,
                  size: size * 0.75,
                ),
              ),
              Positioned(
                left: relativeScale * (offset.dx + 13.5),
                top: relativeScale * (offset.dy + 15.75),
                child: PeepImage(
                  peepAtom: face,
                  size: size * 0.75,
                ),
              ),
              Positioned(
                left: relativeScale * (offset.dx + 10.25),
                top: relativeScale * (offset.dy + 28.5),
                child: PeepImage(
                  peepAtom: facialHair,
                  size: size * 0.75,
                ),
              ),
              Positioned(
                left: relativeScale * (offset.dx + 4.0),
                top: relativeScale * (offset.dy + 20.5),
                child: PeepImage(
                  peepAtom: accessory,
                  size: size * 0.75,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
