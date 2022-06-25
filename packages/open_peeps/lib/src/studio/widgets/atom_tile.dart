import 'package:flutter/material.dart';
import 'package:open_peeps/open_peeps.dart';

/// A selectable tile which shows a [PeepAtom].
class AtomTile extends StatelessWidget {
  /// Creates a new instance of [AtomTile].
  const AtomTile({
    super.key,
    required this.isSelected,
    required this.peepAtom,
    required this.onPressed,
    this.backgroundColor,
    this.activeColor,
  });

  /// Indicates if the displayed [PeepAtom] is selected.
  final bool isSelected;

  /// The [PeepAtom] shown in the tile
  final PeepAtom peepAtom;

  /// The background color of the selectable tile.
  /// Defaults to the card color of your [ThemeData].
  final Color? backgroundColor;

  /// The active color of the selectable tile.
  /// Defaults to [ThemeData.toggleableActiveColor].
  final Color? activeColor;

  /// A callback executed, whenever the tile is pressed.
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: isSelected
            ? activeColor ?? Theme.of(context).toggleableActiveColor
            : backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: PeepImage(
            peepAtom: peepAtom,
            size: 64,
          ),
        ),
      ),
    );
  }
}
