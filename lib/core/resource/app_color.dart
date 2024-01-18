import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF267871);
  static const Color solidPrimary = Color(0xFF136A8A);
  static const Color secondary = Color(0xFFE8F0FF);
  static const Color black = Color(0xFF000000);
  static const Color subBlack = Color(0xFF3B4452);
  static const Color inactiveText = Color(0xFFAAAAAA);
  static const Color lightGrey = Color(0xFFBEBEBE);
  static const Color subText = Color(0xFF666666);
  static const Color scaffoldBG = Color(0xFFF8F8F8);
  static const Color green = Color(0xFF44C698);
  static const Color aliceBlue = Color(0xFFF4F6FD);
  static const Color menuIcon = Color(0xFF002446);
  static const Color menuText = Color(0xFF4F4F4F);
  static const Color white = Color(0xFFFFFFFF);
  static const Color redAccent = Color(0xFFFF2D55);
  static const Color greyText = Color(0xFF828282);
  static const Color lightGreen = Color(0xFF6CDC2D);
  static const Color lightYellow = Color(0xFFFFC727);
  static const Color yellow = Color(0xFFD49D00);
  static const Color skyBlue = Color(0xFF55FCFC);
  static const Color blue = Color(0xFF0654EF);
  static Color? clientStatus(String? status) {
    switch (status) {
      case 'active':
        return lightGreen;
      case 'archived':
        return subBlack;
      case 'done':
        return redAccent;
      default:
        return yellow;
    }
  }
}
