import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

extension MaterialPumper on WidgetTester {
  Future<void> pumpWithMaterial(Widget child) {
    return pumpWidget(
      MaterialApp(
        home: child,
      ),
    );
  }
}
