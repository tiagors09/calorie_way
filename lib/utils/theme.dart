import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278218268),
      surfaceTint: Color(4278218268),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4284005467),
      onPrimaryContainer: Color(4278198788),
      secondary: Color(4287320064),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294944323),
      onSecondaryContainer: Color(4282721536),
      tertiary: Color(4278215827),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4281513471),
      onTertiaryContainer: Color(4278199095),
      error: Color(4289003527),
      onError: Color(4294967295),
      errorContainer: Color(4292620584),
      onErrorContainer: Color(4294967295),
      surface: Color(4294768888),
      onSurface: Color(4280032027),
      onSurfaceVariant: Color(4282664776),
      outline: Color(4285823096),
      outlineVariant: Color(4291086279),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413680),
      inversePrimary: Color(4286110839),
      primaryFixed: Color(4287953296),
      onPrimaryFixed: Color(4278198788),
      primaryFixedDim: Color(4286110839),
      onPrimaryFixedVariant: Color(4278211347),
      secondaryFixed: Color(4294958270),
      onSecondaryFixed: Color(4281079296),
      secondaryFixedDim: Color(4294948976),
      onSecondaryFixedVariant: Color(4285086720),
      tertiaryFixed: Color(4291487487),
      onTertiaryFixed: Color(4278197808),
      tertiaryFixedDim: Color(4287483391),
      onTertiaryFixedVariant: Color(4278209392),
      surfaceDim: Color(4292729305),
      surfaceBright: Color(4294768888),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374386),
      surfaceContainer: Color(4294045164),
      surfaceContainerHigh: Color(4293650407),
      surfaceContainerHighest: Color(4293255905),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278210321),
      surfaceTint: Color(4278218268),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280190509),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4284758016),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4289356800),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278208362),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4278222004),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365125),
      onError: Color(4294967295),
      errorContainer: Color(4292620584),
      onErrorContainer: Color(4294967295),
      surface: Color(4294768888),
      onSurface: Color(4280032027),
      onSurfaceVariant: Color(4282401604),
      outline: Color(4284244064),
      outlineVariant: Color(4286086012),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413680),
      inversePrimary: Color(4286110839),
      primaryFixed: Color(4280190509),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278217499),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4289356800),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4287057408),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4278222004),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278215311),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292729305),
      surfaceBright: Color(4294768888),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374386),
      surfaceContainer: Color(4294045164),
      surfaceContainerHigh: Color(4293650407),
      surfaceContainerHighest: Color(4293255905),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278200581),
      surfaceTint: Color(4278218268),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278210321),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281736192),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284758016),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278199609),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4278208362),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301889),
      onError: Color(4294967295),
      errorContainer: Color(4287365125),
      onErrorContainer: Color(4294967295),
      surface: Color(4294768888),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280362277),
      outline: Color(4282401604),
      outlineVariant: Color(4282401604),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413680),
      inversePrimary: Color(4289855402),
      primaryFixed: Color(4278210321),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278203657),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284758016),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282721536),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4278208362),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278202441),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292729305),
      surfaceBright: Color(4294768888),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374386),
      surfaceContainer: Color(4294045164),
      surfaceContainerHigh: Color(4293650407),
      surfaceContainerHighest: Color(4293255905),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4286110839),
      surfaceTint: Color(4286110839),
      onPrimary: Color(4278204682),
      primaryContainer: Color(4282623560),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294953623),
      onSecondary: Color(4283049984),
      secondaryContainer: Color(4294349568),
      onSecondaryContainer: Color(4281539072),
      tertiary: Color(4287483391),
      onTertiary: Color(4278203471),
      tertiaryContainer: Color(4278231528),
      onTertiaryContainer: Color(4278191371),
      error: Color(4294948009),
      onError: Color(4285071362),
      errorContainer: Color(4292620584),
      onErrorContainer: Color(4294967295),
      surface: Color(4279505683),
      onSurface: Color(4293255905),
      onSurfaceVariant: Color(4291086279),
      outline: Color(4287533458),
      outlineVariant: Color(4282664776),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255905),
      inversePrimary: Color(4278218268),
      primaryFixed: Color(4287953296),
      onPrimaryFixed: Color(4278198788),
      primaryFixedDim: Color(4286110839),
      onPrimaryFixedVariant: Color(4278211347),
      secondaryFixed: Color(4294958270),
      onSecondaryFixed: Color(4281079296),
      secondaryFixedDim: Color(4294948976),
      onSecondaryFixedVariant: Color(4285086720),
      tertiaryFixed: Color(4291487487),
      onTertiaryFixed: Color(4278197808),
      tertiaryFixedDim: Color(4287483391),
      onTertiaryFixedVariant: Color(4278209392),
      surfaceDim: Color(4279505683),
      surfaceBright: Color(4282005817),
      surfaceContainerLowest: Color(4279111182),
      surfaceContainerLow: Color(4280032027),
      surfaceContainer: Color(4280295199),
      surfaceContainerHigh: Color(4280953386),
      surfaceContainerHighest: Color(4281676852),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4286374267),
      surfaceTint: Color(4286110839),
      onPrimary: Color(4278196995),
      primaryContainer: Color(4282623560),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294953623),
      onSecondary: Color(4281407744),
      secondaryContainer: Color(4294349568),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4288139775),
      onTertiary: Color(4278196264),
      tertiaryContainer: Color(4278231528),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949552),
      onError: Color(4281794561),
      errorContainer: Color(4294923589),
      onErrorContainer: Color(4278190080),
      surface: Color(4279505683),
      onSurface: Color(4294900473),
      onSurfaceVariant: Color(4291349452),
      outline: Color(4288717732),
      outlineVariant: Color(4286612612),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255905),
      inversePrimary: Color(4278211603),
      primaryFixed: Color(4287953296),
      onPrimaryFixed: Color(4278195714),
      primaryFixedDim: Color(4286110839),
      onPrimaryFixedVariant: Color(4278206476),
      secondaryFixed: Color(4294958270),
      onSecondaryFixed: Color(4280159488),
      secondaryFixedDim: Color(4294948976),
      onSecondaryFixedVariant: Color(4283575552),
      tertiaryFixed: Color(4291487487),
      onTertiaryFixed: Color(4278194976),
      tertiaryFixedDim: Color(4287483391),
      onTertiaryFixedVariant: Color(4278205015),
      surfaceDim: Color(4279505683),
      surfaceBright: Color(4282005817),
      surfaceContainerLowest: Color(4279111182),
      surfaceContainerLow: Color(4280032027),
      surfaceContainer: Color(4280295199),
      surfaceContainerHigh: Color(4280953386),
      surfaceContainerHighest: Color(4281676852),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294049770),
      surfaceTint: Color(4286110839),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4286374267),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294966008),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4294950525),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294573055),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4288139775),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965752),
      onError: Color(4278190080),
      errorContainer: Color(4294949552),
      onErrorContainer: Color(4278190080),
      surface: Color(4279505683),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294573052),
      outline: Color(4291349452),
      outlineVariant: Color(4291349452),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255905),
      inversePrimary: Color(4278202888),
      primaryFixed: Color(4288216724),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4286374267),
      onPrimaryFixedVariant: Color(4278196995),
      secondaryFixed: Color(4294959817),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4294950525),
      onSecondaryFixedVariant: Color(4280619520),
      tertiaryFixed: Color(4292078335),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4288139775),
      onTertiaryFixedVariant: Color(4278196264),
      surfaceDim: Color(4279505683),
      surfaceBright: Color(4282005817),
      surfaceContainerLowest: Color(4279111182),
      surfaceContainerLow: Color(4280032027),
      surfaceContainer: Color(4280295199),
      surfaceContainerHigh: Color(4280953386),
      surfaceContainerHighest: Color(4281676852),
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
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
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
