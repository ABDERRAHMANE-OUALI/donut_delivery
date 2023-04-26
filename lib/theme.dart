// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';

import 'utils/ui_helper.dart';

class AppTheme {
  ///LIGHT MODE
  ///
  static const Color _scaffoldColorLight = Color(0xfff5f5f5);

  static const Color _primaryColorLight = Color(0xff5b2263);
  static const Color _buttonColor = Color(0xfff6596e);

  static const Color _secondaryColorLight = Color(0xfff5ded3);

  static const Color _errorColorLight = Color(0xffb00020);

  static ThemeData light() {
    return ThemeData.light().copyWith(
      primaryColor: _primaryColorLight,
      primaryColorDark: _buttonColor,
      primaryColorLight: _primaryColorLight,
      scaffoldBackgroundColor: _scaffoldColorLight,
      disabledColor: Colors.white.withOpacity(0.15),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: Colors.white,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(32),
          fontWeight: FontWeight.w900,
          letterSpacing: -1.5,
          color: Colors.black,
        ),
        displayMedium: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(28),
          fontWeight: FontWeight.w800,
          letterSpacing: -1.0,
          color: Colors.black,
        ),
        displaySmall: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(24),
          fontWeight: FontWeight.w800,
          letterSpacing: -0.75,
          color: Colors.black,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(20),
          fontWeight: FontWeight.w800,
          letterSpacing: -0.50,
          color: Colors.black,
        ),
        headlineSmall: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(18),
          fontWeight: FontWeight.w800,
          letterSpacing: -0.5,
          color: Colors.black,
        ),

        titleLarge: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(16),
          fontWeight: FontWeight.w700,
          letterSpacing: -0.25,
          color: Colors.black,
        ),
        titleMedium: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(16),
          letterSpacing: 0.15,
          color: Colors.black,
        ),
        titleSmall: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(14),
          letterSpacing: 0.1,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        bodySmall: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(12),
          color: Colors.black,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(16),
          letterSpacing: 0.5,
          color: Colors.black,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(14),
          letterSpacing: 0.25,
          color: Colors.black,
        ),

        //BUTTON
        labelLarge: TextStyle(
          fontFamily: 'Outfit',
          fontSize: rf(11),
          letterSpacing: 1.25,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
      colorScheme: const ColorScheme.light()
          .copyWith(
            primary: _primaryColorLight,
            secondary: _secondaryColorLight,
            error: _errorColorLight,
          )
          .copyWith(error: _errorColorLight),
    );
  }
}
