import 'package:flutter/material.dart';
import 'package:open_peeps/open_peeps.dart';
import 'package:open_peeps/src/studio/widgets/atom_tile.dart';

/// A horizontal list view which displays all atoms within a [PeepAtom]
/// category.
class PeepAtomCategory extends StatelessWidget {
  /// Creates a new instance of [PeepAtomCategory].
  const PeepAtomCategory({
    super.key,
    required this.atoms,
    required this.selectedAtom,
    required this.onChanged,
    this.backgroundColor,
    this.activeColor,
  });

  /// The currently selected atom.
  /// Use to indicate the selection to the user.
  final PeepAtom selectedAtom;

  /// The list of [PeepAtom]s which are displayed within the
  final List<PeepAtom> atoms;

  /// A Callback executed, when the selection changed.
  final void Function(PeepAtom) onChanged;

  /// The background color of the selectable tile.
  /// Defaults to the card color of your [ThemeData].
  final Color? backgroundColor;

  /// The active color of the selectable tile.
  /// Defaults to [ThemeData.toggleableActiveColor].
  final Color? activeColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: Row(
        children: [
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final item = atoms[index];
                return AtomTile(
                  isSelected: item == selectedAtom,
                  peepAtom: item,
                  onPressed: () {
                    onChanged(item);
                  },
                  backgroundColor: backgroundColor,
                  activeColor: activeColor,
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 8,
                );
              },
              itemCount: atoms.length,
            ),
          ),
        ],
      ),
    );
  }
}
