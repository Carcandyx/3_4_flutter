import 'package:flutter/material.dart';

/// Text style types matching Flutter's TextTheme properties
enum TextStyleType {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  labelLarge,
  labelMedium,
  labelSmall,
}

/// A wrapper around Text widget that uses the app's text theme
class StyledText extends StatelessWidget {
  /// The text to display
  final String text;

  /// The style type from TextTheme to apply
  final TextStyleType styleType;

  /// Optional text alignment
  final TextAlign? textAlign;

  /// Optional maximum number of lines
  final int? maxLines;

  /// Optional overflow handling
  final TextOverflow? overflow;

  /// Optional color override
  final Color? color;

  /// Optional font weight override
  final FontWeight? fontWeight;

  const StyledText(
    this.text, {
    super.key,
    required this.styleType,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.color,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle? baseStyle = _getTextStyle(context);

    // Apply overrides if specified
    final TextStyle? finalStyle = baseStyle?.copyWith(
      color: color,
      fontWeight: fontWeight,
    );

    return Text(
      text,
      style: finalStyle,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  /// Gets the appropriate TextStyle from the TextTheme
  TextStyle? _getTextStyle(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    switch (styleType) {
      case TextStyleType.displayLarge:
        return textTheme.displayLarge;
      case TextStyleType.displayMedium:
        return textTheme.displayMedium;
      case TextStyleType.displaySmall:
        return textTheme.displaySmall;
      case TextStyleType.headlineLarge:
        return textTheme.headlineLarge;
      case TextStyleType.headlineMedium:
        return textTheme.headlineMedium;
      case TextStyleType.headlineSmall:
        return textTheme.headlineSmall;
      case TextStyleType.titleLarge:
        return textTheme.titleLarge;
      case TextStyleType.titleMedium:
        return textTheme.titleMedium;
      case TextStyleType.titleSmall:
        return textTheme.titleSmall;
      case TextStyleType.bodyLarge:
        return textTheme.bodyLarge;
      case TextStyleType.bodyMedium:
        return textTheme.bodyMedium;
      case TextStyleType.bodySmall:
        return textTheme.bodySmall;
      case TextStyleType.labelLarge:
        return textTheme.labelLarge;
      case TextStyleType.labelMedium:
        return textTheme.labelMedium;
      case TextStyleType.labelSmall:
        return textTheme.labelSmall;
    }
  }
}
