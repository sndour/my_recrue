import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_recrue/src/core/utils/fonts.dart';

// TODO customize this as you wish
// Consider using and reading these docs: https://pub.dev/packages/flex_color_scheme
// https://rydmike.com/flexcolorscheme/themesplayground-latest/
final lightTheme = FlexThemeData.light(
  scheme: FlexScheme.verdunHemlock,
  fontFamily: Fonts.Satoshi,

  colors: const FlexSchemeColor(
    // --- Your Core Colors ---
    primary: Color(0xff6B1A3B),
    secondary: Color(0xffF0D9E3),
    tertiary: Color(0xffFF2323),
  ),

  textTheme: Typography.material2021().black.apply(fontFamily: Fonts.Satoshi).copyWith(
    displayLarge: Typography.material2021().black.displayLarge?.copyWith(
      fontFamily: Fonts.Satoshi,
      fontWeight: FontWeight.bold,
      fontSize: 30.sp,
      letterSpacing: 0,
    ),
    headlineSmall: Typography.material2021().black.headlineSmall?.copyWith(
      fontFamily: Fonts.Satoshi,
      //fontWeight: FontWeight.w600, // This will try to find a font file
    ),
    bodyMedium: Typography.material2021().black.bodyMedium?.copyWith(
      fontFamily: Fonts.Satoshi,
      fontSize: 16.sp,
      letterSpacing: 0.5,
    ),
    // If you need italic style:
    labelSmall: Typography.material2021().black.labelSmall?.copyWith(
      fontFamily: Fonts.Satoshi,
      //fontStyle: FontStyle.italic, // This will try to use YourFont-Italic.otf
    ),
  ),



  subThemesData: FlexSubThemesData(
    interactionEffects: false,
    tintedDisabledControls: false,
    blendOnColors: false,
    useMaterial3Typography: true,
    filledButtonSchemeColor: SchemeColor.onTertiaryContainer,
    inputDecoratorBorderType: FlexInputBorderType.underline,
    inputDecoratorUnfocusedBorderIsColored: false,
    fabSchemeColor: SchemeColor.errorContainer,
    alignedDropdown: true,
    tooltipRadius: 4,
    tooltipSchemeColor: SchemeColor.inverseSurface,
    tooltipOpacity: 0.9,
    useInputDecoratorThemeInDialogs: true,
    snackBarElevation: 6,
    snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,
    appBarBackgroundSchemeColor: SchemeColor.errorContainer,
    navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
    navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
    navigationBarMutedUnselectedLabel: false,
    navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
    navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
    navigationBarMutedUnselectedIcon: false,
    navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
    navigationBarIndicatorOpacity: 1.00,
    navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
    navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
    navigationRailMutedUnselectedLabel: false,
    navigationRailSelectedIconSchemeColor: SchemeColor.onSurface,
    navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
    navigationRailMutedUnselectedIcon: false,
    navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
    navigationRailIndicatorOpacity: 1.00,
    navigationRailBackgroundSchemeColor: SchemeColor.surface,
    navigationRailLabelType: NavigationRailLabelType.none,
    elevatedButtonRadius: 10.0,
  ),
  keyColors: const FlexKeyColors(useSecondary: true, useTertiary: true),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
);
