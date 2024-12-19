import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278210967),
      surfaceTint: Color(4278214575),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4279858898),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4287320064),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294944323),
      onSecondaryContainer: Color(4282721536),
      tertiary: Color(4285936018),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4288633018),
      onTertiaryContainer: Color(4294967295),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294768888),
      onSurface: Color(4280032027),
      onSurfaceVariant: Color(4282206535),
      outline: Color(4285364855),
      outlineVariant: Color(4290562502),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413680),
      inversePrimary: Color(4289054975),
      primaryFixed: Color(4292142079),
      onPrimaryFixed: Color(4278197306),
      primaryFixedDim: Color(4289054975),
      onPrimaryFixedVariant: Color(4278208390),
      secondaryFixed: Color(4294958270),
      onSecondaryFixed: Color(4281079296),
      secondaryFixedDim: Color(4294948976),
      onSecondaryFixedVariant: Color(4285086720),
      tertiaryFixed: Color(4294564095),
      onTertiaryFixed: Color(4281466950),
      tertiaryFixedDim: Color(4293767679),
      onTertiaryFixedVariant: Color(4285212295),
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
      primary: Color(4278207359),
      surfaceTint: Color(4278214575),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4279858898),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4284758016),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4289356800),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4284948866),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4288633018),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294768888),
      onSurface: Color(4280032027),
      onSurfaceVariant: Color(4281943363),
      outline: Color(4283785823),
      outlineVariant: Color(4285627770),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413680),
      inversePrimary: Color(4289054975),
      primaryFixed: Color(4279727569),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278213803),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4289356800),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4287057408),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4288567225),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4286791070),
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
      primary: Color(4278198854),
      surfaceTint: Color(4278214575),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278207359),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281736192),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284758016),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282187859),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284948866),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294768888),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4279903780),
      outline: Color(4281943363),
      outlineVariant: Color(4281943363),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413680),
      inversePrimary: Color(4293192959),
      primaryFixed: Color(4278207359),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278201688),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284758016),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282721536),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284948866),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283236457),
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
      primary: Color(4289054975),
      surfaceTint: Color(4289054975),
      onPrimary: Color(4278202719),
      primaryContainer: Color(4278218183),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4294953623),
      onSecondary: Color(4283049984),
      secondaryContainer: Color(4294349568),
      onSecondaryContainer: Color(4281539072),
      tertiary: Color(4293767679),
      onTertiary: Color(4283565166),
      tertiaryContainer: Color(4287975344),
      onTertiaryContainer: Color(4294967295),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279505683),
      onSurface: Color(4293255905),
      onSurfaceVariant: Color(4290562502),
      outline: Color(4287009680),
      outlineVariant: Color(4282206535),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255905),
      inversePrimary: Color(4278214575),
      primaryFixed: Color(4292142079),
      onPrimaryFixed: Color(4278197306),
      primaryFixedDim: Color(4289054975),
      onPrimaryFixedVariant: Color(4278208390),
      secondaryFixed: Color(4294958270),
      onSecondaryFixed: Color(4281079296),
      secondaryFixedDim: Color(4294948976),
      onSecondaryFixedVariant: Color(4285086720),
      tertiaryFixed: Color(4294564095),
      onTertiaryFixed: Color(4281466950),
      tertiaryFixedDim: Color(4293767679),
      onTertiaryFixedVariant: Color(4285212295),
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
      primary: Color(4289580287),
      surfaceTint: Color(4289054975),
      onPrimary: Color(4278195761),
      primaryContainer: Color(4282684144),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294953623),
      onSecondary: Color(4281407744),
      secondaryContainer: Color(4294349568),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293900287),
      onTertiary: Color(4280942651),
      tertiaryContainer: Color(4290606296),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279505683),
      onSurface: Color(4294900473),
      onSurfaceVariant: Color(4290825930),
      outline: Color(4288194210),
      outlineVariant: Color(4286154371),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255905),
      inversePrimary: Color(4278208648),
      primaryFixed: Color(4292142079),
      onPrimaryFixed: Color(4278194472),
      primaryFixedDim: Color(4289054975),
      onPrimaryFixedVariant: Color(4278204009),
      secondaryFixed: Color(4294958270),
      onSecondaryFixed: Color(4280159488),
      secondaryFixedDim: Color(4294948976),
      onSecondaryFixedVariant: Color(4283575552),
      tertiaryFixed: Color(4294564095),
      onTertiaryFixed: Color(4280418353),
      tertiaryFixedDim: Color(4293767679),
      onTertiaryFixedVariant: Color(4283961204),
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
      primary: Color(4294703871),
      surfaceTint: Color(4289054975),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4289580287),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294966008),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4294950525),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965754),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4293900287),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279505683),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4293983994),
      outline: Color(4290825930),
      outlineVariant: Color(4290825930),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255905),
      inversePrimary: Color(4278200916),
      primaryFixed: Color(4292601855),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4289580287),
      onPrimaryFixedVariant: Color(4278195761),
      secondaryFixed: Color(4294959817),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4294950525),
      onSecondaryFixedVariant: Color(4280619520),
      tertiaryFixed: Color(4294631167),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4293900287),
      onTertiaryFixedVariant: Color(4280942651),
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
     filledButtonTheme: FilledButtonThemeData(
       style: ButtonStyle(
         shape: WidgetStatePropertyAll(RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(8.0)
         )),
         minimumSize: WidgetStatePropertyAll(Size(80,55))
       )
     ),
     dropdownMenuTheme: DropdownMenuThemeData(
       inputDecorationTheme: InputDecorationTheme(
         border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(8.0)
         )
       )
     ),
     
     inputDecorationTheme: InputDecorationTheme(
       border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(8.0)
       )
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
