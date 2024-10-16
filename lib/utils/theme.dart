import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff006e1c),
      surfaceTint: Color(0xff006e1c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff58bc5b),
      onPrimaryContainer: Color(0xff002204),
      secondary: Color(0xff8b5000),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffa643),
      onSecondaryContainer: Color(0xff452500),
      tertiary: Color(0xff006493),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff32b5ff),
      onTertiaryContainer: Color(0xff002337),
      error: Color(0xffa50007),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffdc3128),
      onErrorContainer: Color(0xffa50007),
      surface: Color(0xfffcf8f8),
      onSurface: Color(0xff1c1b1b),
      onSurfaceVariant: Color(0xff444748),
      outline: Color(0xff747878),
      outlineVariant: Color(0xffc4c7c7),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xff78dc77),
      primaryFixed: Color(0xff94f990),
      onPrimaryFixed: Color(0xff002204),
      primaryFixedDim: Color(0xff78dc77),
      onPrimaryFixedVariant: Color(0xff005313),
      secondaryFixed: Color(0xffffdcbe),
      onSecondaryFixed: Color(0xff2c1600),
      secondaryFixedDim: Color(0xffffb870),
      onSecondaryFixedVariant: Color(0xff693c00),
      tertiaryFixed: Color(0xffcae6ff),
      onTertiaryFixed: Color(0xff001e30),
      tertiaryFixedDim: Color(0xff8dcdff),
      onTertiaryFixedVariant: Color(0xff004b70),
      surfaceDim: Color(0xffddd9d9),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f3f2),
      surfaceContainer: Color(0xfff1edec),
      surfaceContainerHigh: Color(0xffebe7e7),
      surfaceContainerHighest: Color(0xffe5e2e1),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff78dc77),
      surfaceTint: Color(0xff78dc77),
      onPrimary: Color(0xff00390a),
      primaryContainer: Color(0xff43a648),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffca97),
      onSecondary: Color(0xff4a2800),
      secondaryContainer: Color(0xfff69300),
      onSecondaryContainer: Color(0xff331a00),
      tertiary: Color(0xff8dcdff),
      onTertiary: Color(0xff00344f),
      tertiaryContainer: Color(0xff00a1e8),
      onTertiaryContainer: Color(0xff00050b),
      error: Color(0xffffb4a9),
      onError: Color(0xff690002),
      errorContainer: Color(0xffdc3128),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xff141313),
      onSurface: Color(0xffe5e2e1),
      onSurfaceVariant: Color(0xffc4c7c7),
      outline: Color(0xff8e9192),
      outlineVariant: Color(0xff444748),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e1),
      inversePrimary: Color(0xff006e1c),
      primaryFixed: Color(0xff94f990),
      onPrimaryFixed: Color(0xff002204),
      primaryFixedDim: Color(0xff78dc77),
      onPrimaryFixedVariant: Color(0xff005313),
      secondaryFixed: Color(0xffffdcbe),
      onSecondaryFixed: Color(0xff2c1600),
      secondaryFixedDim: Color(0xffffb870),
      onSecondaryFixedVariant: Color(0xff693c00),
      tertiaryFixed: Color(0xffcae6ff),
      onTertiaryFixed: Color(0xff001e30),
      tertiaryFixedDim: Color(0xff8dcdff),
      onTertiaryFixedVariant: Color(0xff004b70),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff3a3939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1c1b1b),
      surfaceContainer: Color(0xff201f1f),
      surfaceContainerHigh: Color(0xff2a2a2a),
      surfaceContainerHighest: Color(0xff353434),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Colors.amber,
          labelStyle: TextStyle(),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffdc3128), // Borda de erro vermelha
              width: 1,
            ),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffa50007), // Borda de erro quando focado
              width: 2,
            ),
          ),
        ),
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
