import 'package:flutter/material.dart';

ColorScheme appColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primaryContainer:   const Color.fromARGB(  0,   0,   0,   0),
  onPrimaryContainer: const Color.fromARGB(255,   0, 240, 255),
  outline:            const Color.fromARGB(255,   0, 240, 255),
  outlineVariant:     const Color.fromARGB( 77,   0, 240, 255),
  primary:            const Color.fromARGB( 13, 255, 255, 255),
  onPrimary:          const Color.fromARGB(255, 255, 255, 255),
  secondary:          const Color.fromARGB(179, 224, 247, 255),
  onSecondary:        const Color.fromARGB(255,   0, 128, 255),
  error:              const Color.fromARGB(255, 239,  68,  68),
  onError:            const Color.fromARGB(255, 255, 255, 255),
  surface:            const Color.fromARGB(255,   5,  10,  26),
  onSurface:          const Color.fromARGB(255,   0, 240, 255),
);

ThemeData appTheme = ThemeData(
  colorScheme: appColorScheme,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 30,
    ),
    displayMedium: TextStyle(
      fontSize: 17,
    ),
    displaySmall: TextStyle(
      fontSize: 15,
    ),
  )
);
