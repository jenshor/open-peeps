import 'package:flutter/material.dart';
import 'package:open_peeps/open_peeps.dart';
import 'package:open_peeps/src/studio/widgets/peep_atom_category.dart';

/// A studio in which a user can create his [Peep].
class PeepStudio extends StatefulWidget {
  /// Creates a new instance of [PeepStudio]
  const PeepStudio({
    super.key,
    required this.onChanged,
    this.backgroundColor,
    this.activeColor,
  });

  /// The background color of the selectable tile.
  /// Defaults to the card color of your [ThemeData].
  final Color? backgroundColor;

  /// The active color of the selectable tile.
  /// Defaults to [ThemeData.toggleableActiveColor].
  final Color? activeColor;

  /// A callback executed, whenever an [PeepAtom] is selected.
  /// This will build a new [Peep] which will be exposed within the callback.
  final void Function(Peep peep) onChanged;

  @override
  State<PeepStudio> createState() => _PeepStudioState();
}

class _PeepStudioState extends State<PeepStudio> {
  final List<PeepAtom> faces = Face.atoms;
  final List<PeepAtom> heads = Head.atoms;
  final List<PeepAtom> facialHairs = FacialHair.atoms;
  final List<PeepAtom> accessories = Accessories.atoms;

  late PeepAtom head;
  late PeepAtom face;
  late PeepAtom facialHair;
  late PeepAtom accessory;

  @override
  void initState() {
    head = heads.first;
    face = faces.first;
    facialHair = facialHairs.first;
    accessory = accessories.first;
    super.initState();
  }

  void _callOnChanged() {
    widget.onChanged(
      Peep(
        head: head,
        face: face,
        facialHair: facialHair,
        accessory: accessory,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PeepAtomCategory(
            selectedAtom: head,
            atoms: heads,
            onChanged: (atom) {
              setState(() {
                head = atom;
              });
              _callOnChanged();
            },
            backgroundColor: widget.backgroundColor,
            activeColor: widget.activeColor,
          ),
          const SizedBox(
            height: 8,
          ),
          PeepAtomCategory(
            selectedAtom: face,
            atoms: faces,
            onChanged: (atom) {
              setState(() {
                face = atom;
              });
              _callOnChanged();
            },
            backgroundColor: widget.backgroundColor,
            activeColor: widget.activeColor,
          ),
          const SizedBox(
            height: 8,
          ),
          PeepAtomCategory(
            selectedAtom: facialHair,
            atoms: facialHairs,
            onChanged: (atom) {
              setState(() {
                facialHair = atom;
              });
              _callOnChanged();
            },
            backgroundColor: widget.backgroundColor,
            activeColor: widget.activeColor,
          ),
          const SizedBox(
            height: 8,
          ),
          PeepAtomCategory(
            selectedAtom: accessory,
            atoms: accessories,
            onChanged: (atom) {
              setState(() {
                accessory = atom;
              });
              _callOnChanged();
            },
            backgroundColor: widget.backgroundColor,
            activeColor: widget.activeColor,
          ),
        ],
      ),
    );
  }
}
