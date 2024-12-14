import 'package:flutter/material.dart';
import 'package:pozadkey_v3/utils/constants/colors.dart';

class AppFonts {
  static const TextStyle navFont =
      TextStyle(fontFamily: 'Outfit', fontWeight: FontWeight.w500);

  static TextStyle errorText = TextStyle(
    fontSize: 14,
    color: GeneralColors.errorTextColor,
    fontFamily: 'Outfit',
    fontWeight: FontWeight.w400,
  );

  static TextStyle availableText = TextStyle(
    fontFamily: 'Outfit',
    fontSize: 13.0,
    fontWeight: FontWeight.w700,
    color: Colors.white.withOpacity(0.72),
  );

  static TextStyle accountBalText = const TextStyle(
    fontFamily: 'Outfit',
    fontSize: 34.0,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
}
