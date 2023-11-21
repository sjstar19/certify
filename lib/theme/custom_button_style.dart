import 'dart:ui';
import 'package:ceertify2/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL20 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlueGrayFcTL20 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.blueGray600Fc,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get outlineIndigoA => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              23.h,
            ),
            topRight: Radius.circular(
              23.h,
            ),
            bottomLeft: Radius.circular(
              23.h,
            ),
            bottomRight: Radius.circular(
              22.h,
            ),
          ),
        ),
        shadowColor: appTheme.indigoA400.withOpacity(0.1),
        elevation: 12,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
