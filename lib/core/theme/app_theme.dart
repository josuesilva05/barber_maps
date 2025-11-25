import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Cores principais
  static const Color primaryColor = Colors.deepPurple;
  
  // Tema claro
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.light,
      ),
      useMaterial3: true,
      textTheme: GoogleFonts.interTextTheme(
        ThemeData.light().textTheme,
      ),
      // Aplica Inter como fonte padrão para todos os textos
      fontFamily: GoogleFonts.inter().fontFamily,
    );
  }

  // Tema escuro
  static ThemeData get darkTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.dark,
      ),
      useMaterial3: true,
      textTheme: GoogleFonts.interTextTheme(
        ThemeData.dark().textTheme,
      ),
      // Aplica Inter como fonte padrão para todos os textos
      fontFamily: GoogleFonts.inter().fontFamily,
    );
  }
}
