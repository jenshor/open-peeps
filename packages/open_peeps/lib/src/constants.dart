// coverage:ignore-file
import 'package:flutter/material.dart';

/// A class containing a bunch of [Constants].
abstract class Constants {
  /// The name of the package.
  /// This is required to specify the package name for assets.
  /// Otherwise, images will not load correctly if this library is used.
  static const String packageName = 'open_peeps';

  /// A decoration for a card
  static BoxDecoration cardDecoration = const BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(6)),
  );
}
