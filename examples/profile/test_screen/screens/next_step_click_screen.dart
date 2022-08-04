import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

abstract class NextStepClickScreen {
  /// кнопка далее на главном экране
  static Finder nextStepBtn =
  find.widgetWithText(ElevatedButton, 'NextStepClick');
}