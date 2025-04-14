import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// App text theme that defines all text styles used in the application
class AppTextTheme {
  AppTextTheme._(); // Private constructor to prevent instantiation

  // Font families - for local assets
  static const String _titleFontFamily = "Flexo-Bold";

  /// Returns the app's text theme that can be used in ThemeData
  static TextTheme get textTheme {
    // Start with a base text theme with Roboto via Google Fonts
    final baseTextTheme = GoogleFonts.robotoTextTheme();

    // Create our custom text theme
    return TextTheme(
      // Display styles - Large headers, typically used for short, important text
      displayLarge: _getTitleStyle(
        baseTextTheme.displayLarge?.copyWith(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          letterSpacing: -0.5,
          color: Colors.black87,
        ),
      ),

      displayMedium: _getTitleStyle(
        baseTextTheme.displayMedium?.copyWith(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          letterSpacing: -0.5,
          color: Colors.black87,
        ),
      ),

      displaySmall: _getTitleStyle(
        baseTextTheme.displaySmall?.copyWith(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),

      // Headline styles
      headlineLarge: _getTitleStyle(
        baseTextTheme.headlineLarge?.copyWith(
          fontSize: 22.0,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),

      headlineMedium: _getTitleStyle(
        baseTextTheme.headlineMedium?.copyWith(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),

      headlineSmall: _getTitleStyle(
        baseTextTheme.headlineSmall?.copyWith(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),

      // Title styles
      titleLarge: _getTitleStyle(
        baseTextTheme.titleLarge?.copyWith(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),

      titleMedium: _getTitleStyle(
        baseTextTheme.titleMedium?.copyWith(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
          color: Colors.black87,
        ),
      ),

      titleSmall: _getTitleStyle(
        baseTextTheme.titleSmall?.copyWith(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
          color: Colors.black87,
        ),
      ),

      // Body styles
      bodyLarge: GoogleFonts.roboto(
        textStyle: baseTextTheme.bodyLarge?.copyWith(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          letterSpacing: 0.5,
          color: Colors.black87,
        ),
      ),

      bodyMedium: GoogleFonts.roboto(
        textStyle: baseTextTheme.bodyMedium?.copyWith(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          letterSpacing: 0.25,
          color: Colors.black87,
        ),
      ),

      bodySmall: GoogleFonts.roboto(
        textStyle: baseTextTheme.bodySmall?.copyWith(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          letterSpacing: 0.4,
          color: Colors.black54,
        ),
      ),

      // Label styles
      labelLarge: GoogleFonts.roboto(
        textStyle: baseTextTheme.labelLarge?.copyWith(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.25,
          color: Colors.black87,
        ),
      ),

      labelMedium: GoogleFonts.roboto(
        textStyle: baseTextTheme.labelMedium?.copyWith(
          fontSize: 12.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.0,
          color: Colors.black87,
        ),
      ),

      labelSmall: GoogleFonts.roboto(
        textStyle: baseTextTheme.labelSmall?.copyWith(
          fontSize: 10.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.5,
          color: Colors.black87,
        ),
      ),
    );
  }

  /// Helper method to get title style with appropriate font
  static TextStyle? _getTitleStyle(TextStyle? baseStyle) {
    // First try to use Google Fonts, fallback to local asset if needed
    try {
      return GoogleFonts.getFont(
        'Roboto', // Using Roboto as fallback since Flexo-Bold isn't in Google Fonts
        textStyle: baseStyle,
      );
    } catch (e) {
      // If Google Font fails, use the base style with fontFamily
      return baseStyle?.copyWith(
        fontFamily: _titleFontFamily,
      );
    }
  }

  /// Extension methods for easy access to text styles
  static TextStyle displayLarge(BuildContext context) =>
      Theme.of(context).textTheme.displayLarge!;
  static TextStyle displayMedium(BuildContext context) =>
      Theme.of(context).textTheme.displayMedium!;
  static TextStyle displaySmall(BuildContext context) =>
      Theme.of(context).textTheme.displaySmall!;
  static TextStyle headlineLarge(BuildContext context) =>
      Theme.of(context).textTheme.headlineLarge!;
  static TextStyle headlineMedium(BuildContext context) =>
      Theme.of(context).textTheme.headlineMedium!;
  static TextStyle headlineSmall(BuildContext context) =>
      Theme.of(context).textTheme.headlineSmall!;
  static TextStyle titleLarge(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge!;
  static TextStyle titleMedium(BuildContext context) =>
      Theme.of(context).textTheme.titleMedium!;
  static TextStyle titleSmall(BuildContext context) =>
      Theme.of(context).textTheme.titleSmall!;
  static TextStyle bodyLarge(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!;
  static TextStyle bodyMedium(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium!;
  static TextStyle bodySmall(BuildContext context) =>
      Theme.of(context).textTheme.bodySmall!;
  static TextStyle labelLarge(BuildContext context) =>
      Theme.of(context).textTheme.labelLarge!;
  static TextStyle labelMedium(BuildContext context) =>
      Theme.of(context).textTheme.labelMedium!;
  static TextStyle labelSmall(BuildContext context) =>
      Theme.of(context).textTheme.labelSmall!;
}
