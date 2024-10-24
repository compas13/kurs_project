import 'package:flutter/material.dart';
import 'app_colors.dart';

class ColorTheme {
  final String name;
  final Color mainAppBackground;
  final Color appBarShellBackground;
  final Color appBarShellIcons;
  final Color appBarShellTitle;
  final Color appBarBackground;
  final Color appBarIcons;
  final Color appBarTitle;
  final Color bottomBarTextNotActive;
  final Color bottomBarTextActive;
  final Color switchOnSwitch;
  final Color switchOnBackground;
  final Color switchOffSwitch;
  final Color switchOffBackground;
  final Color inputFieldBackground;
  final Color inputFieldLabel;
  final Color inputFieldData;
  final Color inputFieldIconLeft;
  final Color inputFieldIconLeftBackground;
  final Color inputFieldIconRight;
  final Color inputFieldSeparator;
  final Color buttonLightBackground;
  final Color buttonLightBorder;
  final Color buttonLightText;
  final Color buttonFullBackground;
  final Color buttonFullBorder;
  final Color buttonFullText;
  final Color buttonFullAccentBackground;
  final Color buttonFullAccentBorder;
  final Color buttonFullAccentText;

  ColorTheme({
    required this.name,
    required this.mainAppBackground,
    required this.appBarShellBackground,
    required this.appBarShellIcons,
    required this.appBarShellTitle,
    required this.appBarBackground,
    required this.appBarIcons,
    required this.appBarTitle,
    required this.bottomBarTextNotActive,
    required this.bottomBarTextActive,
    required this.switchOnSwitch,
    required this.switchOnBackground,
    required this.switchOffSwitch,
    required this.switchOffBackground,
    required this.inputFieldBackground,
    required this.inputFieldLabel,
    required this.inputFieldData,
    required this.inputFieldIconLeft,
    required this.inputFieldIconLeftBackground,
    required this.inputFieldIconRight,
    required this.inputFieldSeparator,
    required this.buttonLightBackground,
    required this.buttonLightBorder,
    required this.buttonLightText,
    required this.buttonFullBackground,
    required this.buttonFullBorder,
    required this.buttonFullText,
    required this.buttonFullAccentBackground,
    required this.buttonFullAccentBorder,
    required this.buttonFullAccentText,
  });
}

class AppThemes {
  static ColorTheme lightTheme = ColorTheme(
    name: 'light',
    mainAppBackground: AppColors.colorN8,
    appBarShellBackground: AppColors.colorN8,
    appBarShellIcons: AppColors.colorN2,
    appBarShellTitle: AppColors.colorN10,
    appBarBackground: AppColors.colorN8,
    appBarIcons: AppColors.colorN11,
    appBarTitle: AppColors.colorN11,
    bottomBarTextNotActive: AppColors.colorN11,
    bottomBarTextActive: AppColors.colorN10,
    switchOnSwitch: AppColors.colorN10,
    switchOnBackground: AppColors.colorN11,
    switchOffSwitch: AppColors.colorN11,
    switchOffBackground: AppColors.colorN8,
    inputFieldBackground: AppColors.colorN9,
    inputFieldLabel: AppColors.colorN10,
    inputFieldData: AppColors.colorN13,
    inputFieldIconLeft: AppColors.colorN10,
    inputFieldIconLeftBackground: AppColors.colorN11,
    inputFieldIconRight: AppColors.colorN11,
    inputFieldSeparator: AppColors.colorN1,
    buttonLightBackground: AppColors.colorN1,
    buttonLightBorder: AppColors.colorN2,
    buttonLightText: AppColors.colorN4,
    buttonFullBackground: AppColors.colorN2,
    buttonFullBorder: AppColors.colorN2,
    buttonFullText: AppColors.colorN4,
    buttonFullAccentBackground: AppColors.colorN4,
    buttonFullAccentBorder: AppColors.colorN4,
    buttonFullAccentText: AppColors.colorN1,
  );

  static ColorTheme darkTheme = ColorTheme(
    name: 'dark',
    mainAppBackground: AppColors.colorN1,
    appBarShellBackground: AppColors.colorN1,
    appBarShellIcons: AppColors.colorN2,
    appBarShellTitle: AppColors.colorN4,
    appBarBackground: AppColors.colorN1,
    appBarIcons: AppColors.colorN2,
    appBarTitle: AppColors.colorN4,
    bottomBarTextNotActive: AppColors.colorN2,
    bottomBarTextActive: AppColors.colorN4,
    switchOnSwitch: AppColors.colorN4,
    switchOnBackground: AppColors.colorN2,
    switchOffSwitch: AppColors.colorN2,
    switchOffBackground: AppColors.colorN5,
    inputFieldBackground: AppColors.colorN5,
    inputFieldLabel: AppColors.colorN2,
    inputFieldData: AppColors.colorN6,
    inputFieldIconLeft: AppColors.colorN4,
    inputFieldIconLeftBackground: AppColors.colorN2,
    inputFieldIconRight: AppColors.colorN2,
    inputFieldSeparator: AppColors.colorN1,
    buttonLightBackground: AppColors.colorN1,
    buttonLightBorder: AppColors.colorN2,
    buttonLightText: AppColors.colorN4,
    buttonFullBackground: AppColors.colorN2,
    buttonFullBorder: AppColors.colorN2,
    buttonFullText: AppColors.colorN4,
    buttonFullAccentBackground: AppColors.colorN4,
    buttonFullAccentBorder: AppColors.colorN4,
    buttonFullAccentText: AppColors.colorN1,
  );
}