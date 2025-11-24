import 'package:pozadkey_v3/shared/index.dart';

class AppFonts {
  // Helper: calculates responsive font size
  static double getFontSize(BuildContext context, double baseSize) {
    final width = MediaQuery.of(context).size.width;
    if (width < 500) return baseSize * 0.8; // scale down on small screens
    if (width < 800) return baseSize * 0.9; // medium screens
    return baseSize; // default for large screens
  }

  // Header text
  static TextStyle header(BuildContext context,
      {double baseSize = 35, Color? color}) {
    return Theme.of(context).textTheme.displayLarge!.copyWith(
          fontSize: getFontSize(context, baseSize),
          color: color ?? Colors.white,
          fontWeight: FontWeight.w600,
        );
  }

  static TextStyle subHeader(BuildContext context,
      {double baseSize = 24, Color? color}) {
    return Theme.of(context).textTheme.displayLarge!.copyWith(
          fontSize: getFontSize(context, baseSize),
          color: color ?? Colors.white,
          fontWeight: FontWeight.w600,
        );
  }

  // Body text
  static TextStyle body(BuildContext context,
      {double baseSize = 16, Color? color}) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontSize: getFontSize(context, baseSize),
          color: color ?? Colors.white,
        );
  }

  // Link text
  static TextStyle link(BuildContext context,
      {double baseSize = 16, Color? color}) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontSize: getFontSize(context, baseSize),
          color: color ?? GeneralColors.linkHoverIn,
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.underline,
        );
  }

  // Button text
  static TextStyle button(BuildContext context,
      {double baseSize = 16, Color? color}) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontSize: getFontSize(context, baseSize),
          fontWeight: FontWeight.w700,
          color: color ?? Colors.white,
        );
  }

  // Small caption
  static TextStyle caption(BuildContext context,
      {double baseSize = 14, Color? color}) {
    return Theme.of(context).textTheme.labelMedium!.copyWith(
          fontSize: getFontSize(context, baseSize),
          color: color ?? Colors.grey,
        );
  }
}
