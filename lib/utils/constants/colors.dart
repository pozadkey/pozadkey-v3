import 'package:pozadkey_v3/shared/index.dart';
class AppColors {
  static Color selectedIcon =
      const Color.fromARGB(255, 0, 88, 212).withValues(alpha: 1);
  static const Color unselectedIcon = Color(0xFF9E9E9E);
  static Color balanceColor =
      const Color.fromARGB(255, 0, 88, 212).withValues(alpha: 0.8);
  static Color cardColor =
      const Color.fromARGB(255, 0, 88, 212).withValues(alpha: 1);
}

// General colors
class GeneralColors {
  static Color bgdColor = const Color(0xFF000000);
  static Color linkHoverText = const Color(0xFFA7A7A7);
   static Color linkHoverIn = const Color(0xFFFFFFFF);
  static Color errorTextColor = const Color(0xFFD32F2F);
  static Color loadingColor = const Color.fromARGB(230, 190, 67, 235);
  static Color successTextColor = const Color.fromARGB(255, 75, 207, 104);
  static Color successIconColor = const Color(0xFF0058D4);
  static Color linkText =
      const Color.fromARGB(255, 0, 88, 212).withValues(alpha: 0.8);
}

// Primary Button Colors
class PrimaryButtonColors {
  static Color bgColor = const Color(0xCCCCCCCC);
  static Color loadingBgColor = const Color(0xFF0058D4).withValues(alpha: 0.4);
  static Color disabledBgColor = const Color.fromARGB(255, 50, 50, 50)
      .withValues(alpha: 0.3);
  static Color textColor = const Color(0xFFFFFFFF);
  static Color disabledTextColor =
      const Color(0xFFFFFFFF).withValues(alpha: 0.5);
}

// Onboarding  screen
const buttonColor = Color.fromRGBO(59, 59, 59, 1);
const inactiveIndicatorColor = Color(0xFF9E9E9E);
const activeIndicatorColor = Color(0xFF0058D4);
