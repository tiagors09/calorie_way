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
      onErrorContainer: Color(0xffffffff),
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

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff004f11),
      surfaceTint: Color(0xff006e1c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff1e862d),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff643800),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffaa6400),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff00476a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff007cb4),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0005),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffdc3128),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf8f8),
      onSurface: Color(0xff1c1b1b),
      onSurfaceVariant: Color(0xff404344),
      outline: Color(0xff5c6060),
      outlineVariant: Color(0xff787b7c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xff78dc77),
      primaryFixed: Color(0xff1e862d),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff006b1b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffaa6400),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff874e00),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff007cb4),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff00628f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffddd9d9),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f3f2),
      surfaceContainer: Color(0xfff1edec),
      surfaceContainerHigh: Color(0xffebe7e7),
      surfaceContainerHighest: Color(0xffe5e2e1),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002905),
      surfaceTint: Color(0xff006e1c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004f11),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff361c00),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff643800),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002539),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff00476a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0001),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0005),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf8f8),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff212525),
      outline: Color(0xff404344),
      outlineVariant: Color(0xff404344),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xffb1ffaa),
      primaryFixed: Color(0xff004f11),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003509),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff643800),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff452500),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff00476a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003049),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffddd9d9),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f3f2),
      surfaceContainer: Color(0xfff1edec),
      surfaceContainerHigh: Color(0xffebe7e7),
      surfaceContainerHighest: Color(0xffe5e2e1),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
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

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff7ce17b),
      surfaceTint: Color(0xff78dc77),
      onPrimary: Color(0xff001b03),
      primaryContainer: Color(0xff43a648),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffca97),
      onSecondary: Color(0xff311900),
      secondaryContainer: Color(0xfff69300),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xff97d1ff),
      onTertiary: Color(0xff001828),
      tertiaryContainer: Color(0xff00a1e8),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab0),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5545),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff141313),
      onSurface: Color(0xfffefaf9),
      onSurfaceVariant: Color(0xffc8cbcc),
      outline: Color(0xffa0a3a4),
      outlineVariant: Color(0xff808484),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e1),
      inversePrimary: Color(0xff005413),
      primaryFixed: Color(0xff94f990),
      onPrimaryFixed: Color(0xff001602),
      primaryFixedDim: Color(0xff78dc77),
      onPrimaryFixedVariant: Color(0xff00400c),
      secondaryFixed: Color(0xffffdcbe),
      onSecondaryFixed: Color(0xff1e0d00),
      secondaryFixedDim: Color(0xffffb870),
      onSecondaryFixedVariant: Color(0xff522d00),
      tertiaryFixed: Color(0xffcae6ff),
      onTertiaryFixed: Color(0xff001320),
      tertiaryFixedDim: Color(0xff8dcdff),
      onTertiaryFixedVariant: Color(0xff003a57),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff3a3939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1c1b1b),
      surfaceContainer: Color(0xff201f1f),
      surfaceContainerHigh: Color(0xff2a2a2a),
      surfaceContainerHighest: Color(0xff353434),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff1ffea),
      surfaceTint: Color(0xff78dc77),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff7ce17b),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffffaf8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffbe7d),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff9fbff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff97d1ff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f8),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab0),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff141313),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff9fbfc),
      outline: Color(0xffc8cbcc),
      outlineVariant: Color(0xffc8cbcc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e1),
      inversePrimary: Color(0xff003208),
      primaryFixed: Color(0xff98fe94),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff7ce17b),
      onPrimaryFixedVariant: Color(0xff001b03),
      secondaryFixed: Color(0xffffe2c9),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffbe7d),
      onSecondaryFixedVariant: Color(0xff251200),
      tertiaryFixed: Color(0xffd3eaff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff97d1ff),
      onTertiaryFixedVariant: Color(0xff001828),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff3a3939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1c1b1b),
      surfaceContainer: Color(0xff201f1f),
      surfaceContainerHigh: Color(0xff2a2a2a),
      surfaceContainerHighest: Color(0xff353434),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
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
