import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      // Warna utama aplikasi
      primaryColor: AppColors.primaryB,
      // Warna latar belakang default
      scaffoldBackgroundColor: AppColors.backgroundB,

      // Skema warna utama yang calm
      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryB,
        secondary: AppColors.secondaryB,
        surface: AppColors.surfaceB,
        onSurface: AppColors.onSurfaceB,
      ),

      // Tampilan AppBar dengan elevation minimal dan typography modern
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primaryB,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        shadowColor: Colors.transparent,
        titleTextStyle: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          letterSpacing: 0,
        ),
      ),

      // Tombol FAB dengan warna yang lebih soft
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.accentB,
        foregroundColor: Colors.white,
        elevation: 4,
      ),

      // Tombol Elevated dengan styling yang lebih calm dan typography modern
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryB,
          foregroundColor: Colors.white,
          elevation: 2,
          shadowColor: AppColors.primaryB.withOpacity(0.3),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          textStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
      ),

      // Style Card global dengan shadow yang lebih soft
      cardTheme: CardThemeData(
        elevation: 2,
        shadowColor: AppColors.primaryB.withOpacity(0.1),
        color: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),

      // Text theme dengan Google Fonts Inter yang modern dan calm
      textTheme: GoogleFonts.interTextTheme().copyWith(
        // Headlines - untuk judul besar
        headlineLarge: GoogleFonts.inter(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: AppColors.onSurfaceB,
          letterSpacing: -0.5,
        ),
        headlineMedium: GoogleFonts.inter(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: AppColors.onSurfaceB,
          letterSpacing: -0.25,
        ),
        headlineSmall: GoogleFonts.inter(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: AppColors.onSurfaceB,
          letterSpacing: 0,
        ),

        // Titles - untuk subtitle dan heading kecil
        titleLarge: GoogleFonts.inter(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: AppColors.onSurfaceB,
          letterSpacing: 0,
        ),
        titleMedium: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.onSurfaceB,
          letterSpacing: 0.15,
        ),
        titleSmall: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.onSurfaceB,
          letterSpacing: 0.1,
        ),

        // Body text - untuk konten utama
        bodyLarge: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.onSurfaceB,
          letterSpacing: 0.5,
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.onSurfaceB,
          letterSpacing: 0.25,
        ),
        bodySmall: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.onSurfaceB.withOpacity(0.8),
          letterSpacing: 0.4,
        ),

        // Labels - untuk button text dan small labels
        labelLarge: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.onSurfaceB,
          letterSpacing: 0.1,
        ),
        labelMedium: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.onSurfaceB,
          letterSpacing: 0.5,
        ),
        labelSmall: GoogleFonts.inter(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color: AppColors.onSurfaceB.withOpacity(0.8),
          letterSpacing: 0.5,
        ),
      ),

      // Divider theme
      dividerTheme: const DividerThemeData(
        color: AppColors.dividerB,
        thickness: 0.5,
      ),
    );
  }
}
