import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;
import 'package:dart_suite/dart_suite.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _colors = [
  0xff5FBC8F, // Green
  0xff53A4CE, // Blue
  0xffF3CE5E, // Yellow
  0xffE6553F // Off Red
];

class AppTheme extends Cubit<ThemeData> {
  AppTheme() : super(_getRandomTheme);

  void rolling() => emit(_getRandomTheme);

  /// Returns a random theme
  static get _getRandomTheme {
    final color = Color(_colors.getRandom()!);
    var background = Color(0xffF2EBE1);
    var textTheme = GoogleFonts.interTextTheme();
    textTheme = textTheme.copyWith(
      bodyMedium: textTheme.bodyMedium!.copyWith(fontSize: 18, height: 1.78, fontWeight: FontWeight.w500),
      headlineMedium: textTheme.bodySmall!.copyWith(fontSize: 28, fontWeight: FontWeight.w600),
    );

    final newTheme = ThemeData(
      colorScheme: ColorScheme(
        primary: color,
        secondary: color,
        surface: background,
        onPrimary: Colors.black,
        onSurface: Colors.black,
        error: Colors.red,
        onError: Colors.white,
        onSecondary: Colors.white,
        brightness: Brightness.light,
      ),
      // primaryColor: color,
      // scaffoldBackgroundColor: background,
      // dialogBackgroundColor: background,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(backgroundColor: color),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.black, iconColor: Colors.black)),
    );

    return newTheme;
  }
}
