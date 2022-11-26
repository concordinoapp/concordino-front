import 'package:flutter/material.dart';

class AppThemeData {
  static ThemeData lightThemeData =
      themeData(lightColorScheme, Colors.black.withOpacity(0.12));
  static ThemeData darkThemeData =
      themeData(darkColorScheme, Colors.white.withOpacity(0.12));

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      hintColor: Colors.red,
      colorScheme: colorScheme,
      textTheme: _textTheme,
      primaryColor: const Color.fromRGBO(255, 250, 250, 1),
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.background,
        foregroundColor: colorScheme.onBackground,
        elevation: 0,
        iconTheme: IconThemeData(color: colorScheme.primary),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: colorScheme.onPrimary,
        unselectedItemColor: colorScheme.onPrimary.withOpacity(0.8),
        backgroundColor: colorScheme.primary,
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        clipBehavior: Clip.antiAlias, // Clip.hardEdge
        margin: const EdgeInsets.all(4.0),
        elevation: 1.0,
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      dividerTheme: DividerThemeData(
        color: colorScheme.onSurface.withOpacity(0.4),
        thickness: 1,
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          Colors.black.withOpacity(0.80),
          Colors.white,
        ),
        contentTextStyle: _textTheme.subtitle1?.apply(color: Colors.white),
      ),
    );
  }

  // LIGHT THEME
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    //
    primary: Color(0xFFA33C33),
    onPrimary: Color(0xFFFFF1E3),
    primaryContainer: Color(0xFF117378),
    //
    secondary: Color(0xFFB66317),
    onSecondary: Colors.white,
    secondaryContainer: Color(0xFF88FF00),
    //
    background: Color(0xFFFFF1E3),
    onBackground: Colors.black,
    //
    surface: Color(0xFFFAFBFB),
    onSurface: Color(0xFF241E30),
    //
    error: Color(0xFFE57373),
    onError: Colors.black,
  );

  // DARK THEME
  static ColorScheme darkColorScheme = const ColorScheme(
    brightness: Brightness.dark,
    //
    primary: Color.fromRGBO(255, 250, 250, 1),
    onPrimary: Color.fromRGBO(255, 244, 243, 1),
    primaryContainer: Color(0xFF1CDEC9),
    //
    secondary: Color(0xFF4D1F7C),
    onSecondary: Color.fromRGBO(53, 51, 55, 1),
    secondaryContainer: Color(0xFF451B6F),
    //
    background: Color.fromRGBO(34, 38, 44, 1),
    onBackground: Color.fromRGBO(53, 51, 55, 1),
    //
    surface: Color(0xFF1F1929),
    onSurface: Color.fromRGBO(53, 51, 55, 1),
    //
    error: Color.fromARGB(0, 200, 1, 1),
    onError: Colors.white,
  );

  static const TextTheme _textTheme = TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Zilla_Slab'),
      headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      // TODO VOIR POUR SELECTIONNER LA POLICE SECONDAIRE
      // caption: GoogleFonts.oswald(fontWeight: _semiBold, fontSize: 16.0), 
      // headline5: GoogleFonts.oswald(fontWeight: _medium, fontSize: 16.0),
      // subtitle1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.medium),
      // overline: TextStyle(fontSize: 12.0, fontWeight: FontWeight.medium),
      // bodyText1: TextStyle(fontSize: 14.0, fontStyle: FontStyle.regular),
      // subtitle2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.medium),
      // button: TextStyle(fontSize: 14.0, fontWeight: FontWeight.semiBold),
      );
}