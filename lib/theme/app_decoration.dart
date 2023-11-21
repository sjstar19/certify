import 'package:flutter/material.dart';
import 'package:ceertify2/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmberA => BoxDecoration(
        color: appTheme.amberA400,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );

  // Gradient decorations
  static BoxDecoration get gradientPrimaryToErrorContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1.16),
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.errorContainer,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray900.withOpacity(0.04),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -7,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray10001,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              3,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderBL20 => BorderRadius.vertical(
        bottom: Radius.circular(20.h),
      );
  static BorderRadius get customBorderTL20 => BorderRadius.horizontal(
        left: Radius.circular(20.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
