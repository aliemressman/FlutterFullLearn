import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor;

  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
      appBarTheme: const AppBarTheme(),
      scaffoldBackgroundColor: Colors.white.withOpacity(1),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.pink),
      buttonTheme: ButtonThemeData(
        colorScheme: ColorScheme.light(onPrimary: Colors.purple, secondary: _LightColor().blueMania),
      ),
      colorScheme: const ColorScheme.light(),
      textTheme: ThemeData.light().textTheme.copyWith(
            titleMedium: TextStyle(fontSize: 20, color: _LightColor()._textColor),
          ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(Colors.red),
        side: const BorderSide(color: Colors.green),
      ),
    );
  }
}

class _LightColor {
  final Color _textColor = const Color.fromARGB(255, 37, 5, 5);
  final Color blueMania = const Color.fromARGB(95, 188, 248, 1);
}
