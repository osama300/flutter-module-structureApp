import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return ColorScheme.fromSeed(
      brightness: Brightness.light,
      primary: Color(4287514964),
      seedColor: Color(4287514964),
      surfaceTint: Color(4287514964),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294957533),
      onPrimaryContainer: Color(4282058516),
      secondary: Color(4285945434),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294957533),
      onSecondaryContainer: Color(4281079064),
      tertiary: Color(4286076977),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294958520),
      onTertiaryContainer: Color(4280948480),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965495),
      onSurface: Color(4280424730),
      onSurfaceVariant: Color(4283581252),
      outline: Color(4286870388),
      outlineVariant: Color(4292329923),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281871919),
      inversePrimary: Color(4294947516),
      // primaryFixed: Color(4294957533),
      // onPrimaryFixed: Color(4282058516),
      // primaryFixedDim: Color(4294947516),
      // onPrimaryFixedVariant: Color(4285674302),
      // secondaryFixed: Color(4294957533),
      // onSecondaryFixed: Color(4281079064),
      // secondaryFixedDim: Color(4293246400),
      // onSecondaryFixedVariant: Color(4284235587),
      // tertiaryFixed: Color(4294958520),
      // onTertiaryFixed: Color(4280948480),
      // tertiaryFixedDim: Color(4293574543),
      // onTertiaryFixedVariant: Color(4284367132),
      // surfaceDim: Color(4293383895),
      // surfaceBright: Color(4294965495),
      // surfaceContainerLowest: Color(4294967295),
      // surfaceContainerLow: Color(4294963441),
      // surfaceContainer: Color(4294699755),
      // surfaceContainerHigh: Color(4294370533),
      // surfaceContainerHighest: Color(4293975775),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return ColorScheme.fromSeed(
      brightness: Brightness.dark,
      primary: Color(4294947516),
      surfaceTint: Color(4294947516),
      onPrimary: Color(4283833640),
      seedColor: Color(4283833640),
      primaryContainer: Color(4285674302),
      onPrimaryContainer: Color(4294957533),
      secondary: Color(4293246400),
      onSecondary: Color(4282591533),
      secondaryContainer: Color(4284235587),
      onSecondaryContainer: Color(4294957533),
      tertiary: Color(4293574543),
      onTertiary: Color(4282723079),
      tertiaryContainer: Color(4284367132),
      onTertiaryContainer: Color(4294958520),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279898386),
      onSurface: Color(4293975775),
      onSurfaceVariant: Color(4292329923),
      outline: Color(4288646286),
      outlineVariant: Color(4283581252),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293975775),
      inversePrimary: Color(4287514964),
      onBackground: Color(4294957533),
      // onPrimaryFixed: Color(4282058516),
      // primaryFixedDim: Color(4294947516),
      // onPrimaryFixedVariant: Color(4285674302),
      // secondaryFixed: Color(4294957533),
      // onSecondaryFixed: Color(4281079064),
      // secondaryFixedDim: Color(4293246400),
      // onSecondaryFixedVariant: Color(4284235587),
      // tertiaryFixed: Color(4294958520),
      // onTertiaryFixed: Color(4280948480),
      // tertiaryFixedDim: Color(4293574543),
      // onTertiaryFixedVariant: Color(4284367132),
      // surfaceDim: Color(4279898386),
      // surfaceBright: Color(4282464055),
      // surfaceContainerLowest: Color(4279503885),
      // surfaceContainerLow: Color(4280424730),
      // surfaceContainer: Color(4280687902),
      // surfaceContainerHigh: Color(4281411624),
      // surfaceContainerHighest: Color(4282200627),
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
        scaffoldBackgroundColor: colorScheme.background,
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
