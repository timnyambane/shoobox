import 'package:flutter/material.dart';

class Styles {
  // Primary Colors
  static const Color primaryColor = Color(0xFF1D3557);
  static const Color secondaryColor = Color(0xFF457B9D);
  static const Color accentColor = Color(0xFFA8DADC);
  static const Color lightColor = Color(0xFFF1FAEE);
  static const Color darkColor = Color(0xFF0A0908);
  static const Color redColor = Color(0xFFE63946);

  // Light Color Scheme
  static const ColorScheme lightColorScheme = ColorScheme.light(
    primary: primaryColor,
    secondary: secondaryColor,
    surface: lightColor,
    background: lightColor,
    error: redColor,
    onPrimary: lightColor,
    onSecondary: lightColor,
    onSurface: darkColor,
    onBackground: darkColor,
    onError: lightColor,
  );

  // Dark Color Scheme
  static const ColorScheme darkColorScheme = ColorScheme.dark(
    primary: primaryColor,
    secondary: secondaryColor,
    surface: darkColor,
    background: darkColor,
    error: redColor,
    onPrimary: darkColor,
    onSecondary: darkColor,
    onSurface: lightColor,
    onBackground: lightColor,
    onError: darkColor,
  );

  // Text Styles
  static const TextStyle largeDisplay = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: darkColor,
  );

  static const TextStyle headline = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: darkColor,
  );

  static const TextStyle subhead = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: darkColor,
  );

  static const TextStyle bodyTextL =
      TextStyle(fontSize: 18, color: darkColor, fontWeight: FontWeight.bold);

  static const TextStyle bodyTextS = TextStyle(
    fontSize: 16,
    color: darkColor,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 14,
    color: darkColor,
  );

  static const TextStyle smallText = TextStyle(
    fontSize: 12,
    color: darkColor,
  );

  static const TextStyle smallTextBold = TextStyle(
    fontSize: 12,
    color: darkColor,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle smallTextGray = TextStyle(
    fontSize: 12,
    color: darkColor,
    fontWeight: FontWeight.w300,
  );
}

// Material Theme
final ThemeData lightThemeData = ThemeData.from(
  colorScheme: Styles.lightColorScheme,
);

final ThemeData darkThemeData = ThemeData.from(
  colorScheme: Styles.darkColorScheme,
);
