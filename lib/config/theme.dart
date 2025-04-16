import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class AppThemeCustom {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF6750A4),
      onPrimary: Colors.white,
      primaryContainer: Color(0xFFEADDFF),
      onPrimaryContainer: Color(0xFF21005D),
      secondary: Color(0xFF625B71),
      onSecondary: Colors.white,
      secondaryContainer: Color(0xFFE8DEF8),
      onSecondaryContainer: Color(0xFF1D192B),
      tertiary: Color(0xFF7D5260),
      onTertiary: Colors.white,
      tertiaryContainer: Color(0xFFFFD8E4),
      onTertiaryContainer: Color(0xFF31111D),
      error: Color(0xFFB3261E),
      onError: Colors.white,
      errorContainer: Color(0xFFF9DEDC),
      onErrorContainer: Color(0xFF410E0B),
      surface: Color(0xFFFFFBFE),
      surfaceContainerHighest: Color(0xFFE6E0E9),
      onSurface: Color(0xFF1C1B1F),
      onSurfaceVariant: Color(0xFF49454F),
      outline: Color(0xFF79747E),
      shadow: Colors.black,
      inverseSurface: Color(0xFF313033),
      onInverseSurface: Color(0xFFF4EFF4),
      inversePrimary: Color(0xFFD0BCFF),
      surfaceTint: Color(0xFF6750A4),
    ),
    fontFamily: GoogleFonts.poppins().fontFamily,

    // AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFEADDFF),
      foregroundColor: Color(0xFF21005D),
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Color(0xFF21005D),
      ),
    ),

    // BottomNavigationBar
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFFE8DEF8),
      selectedItemColor: Color(0xFF6750A4),
      unselectedItemColor: Color(0xFF49454F),
      showSelectedLabels: true,
      showUnselectedLabels: false,
    ),

    // Drawer
    drawerTheme: const DrawerThemeData(backgroundColor: Color(0xFFE8DEF8)),

    // FloatingActionButton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF6750A4),
      foregroundColor: Colors.white,
      elevation: 4,
    ),

    // Botones en general
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF6750A4),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    ),

    // Texto
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      titleLarge: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      bodyMedium: const TextStyle(fontSize: 16),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFD0BCFF),
      onPrimary: Color(0xFF381E72),
      primaryContainer: Color(0xFF4F378B),
      onPrimaryContainer: Color(0xFFEADDFF),
      secondary: Color(0xFFCCC2DC),
      onSecondary: Color(0xFF332D41),
      secondaryContainer: Color(0xFF4A4458),
      onSecondaryContainer: Color(0xFFE8DEF8),
      tertiary: Color(0xFFEFB8C8),
      onTertiary: Color(0xFF492532),
      tertiaryContainer: Color(0xFF633B48),
      onTertiaryContainer: Color(0xFFFFD8E4),
      error: Color(0xFFF2B8B5),
      onError: Color(0xFF601410),
      errorContainer: Color(0xFF8C1D18),
      onErrorContainer: Color(0xFFF9DEDC),
      surface: Color(0xFF1C1B1F),
      onSurface: Color(0xFFE6E1E5),
      onSurfaceVariant: Color(0xFFCAC4D0),
      outline: Color(0xFF938F99),
      shadow: Color(0xFF000000),
      inverseSurface: Color(0xFFE6E1E5),
      surfaceContainerHighest: Color(0xFF36343B),
      onInverseSurface: Color(0xFF313033),
      inversePrimary: Color(0xFF6750A4),
      surfaceTint: Color(0xFFD0BCFF),
    ),
    fontFamily: GoogleFonts.poppins().fontFamily,

    // AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF2B2250),
      foregroundColor: Color(0xFFEADDFF),
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Color(0xFFEADDFF),
      ),
    ),

    // BottomNavigationBar
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF2B2250),
      selectedItemColor: Color(0xFFD0BCFF),
      unselectedItemColor: Color(0xFF938F99),
      showSelectedLabels: true,
      showUnselectedLabels: false,
    ),

    // Drawer
    drawerTheme: const DrawerThemeData(backgroundColor: Color(0xFF2B2250)),

    // FloatingActionButton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFFD0BCFF),
      foregroundColor: Color(0xFF381E72),
      elevation: 4,
    ),

    // Botones en general
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFD0BCFF),
        foregroundColor: const Color(0xFF381E72),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    ),

    // Tipografía
    textTheme: GoogleFonts.poppinsTextTheme(
      ThemeData.dark().textTheme,
    ).copyWith(
      titleLarge: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      bodyMedium: const TextStyle(fontSize: 16),
    ),
  );
}
