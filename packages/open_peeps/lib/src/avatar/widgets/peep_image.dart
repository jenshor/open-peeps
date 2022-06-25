import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_peeps/open_peeps.dart';
import 'package:open_peeps/src/constants.dart';

/// A [PeepImage] represents one [PeepAtom] of a [Peep].
/// [PeepImage] uses [SvgPicture] to be scalable to any size.
class PeepImage extends StatelessWidget {
  /// Creates a new instance of [PeepImage] for accessory atoms.
  const PeepImage({
    super.key,
    required this.peepAtom,
    required this.size,
  });

  /// The atom which will be rendered
  final PeepAtom peepAtom;

  /// The size of the [PeepImage].
  final double size;

  /// The size of the largest atom base file
  /// Used to scale smaller atoms relative to the most dominant [PeepAtom].
  static const double _maxWidth = 473;
  static const double _maxHeight = 567;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/atoms/${peepAtom.directoryName}/${peepAtom.name}.svg',
      width: peepAtom.imageWidth / _maxWidth * size,
      height: peepAtom.imageHeight / _maxHeight * size,
      allowDrawingOutsideViewBox: true,
      clipBehavior: Clip.none,
      package: Constants.packageName,
    );
  }
}
