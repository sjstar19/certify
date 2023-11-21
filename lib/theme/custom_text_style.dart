import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray500a5 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray500A5,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeBluegray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.45),
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeOnErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  // Headline text style
  static get headlineLargeInterOnPrimary =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumMontserratOnErrorContainer =>
      theme.textTheme.headlineMedium!.montserrat.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 28.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallOnErrorContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeOverpassBlack900 =>
      theme.textTheme.titleLarge!.overpass.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOverpassBluegray900 =>
      theme.textTheme.titleLarge!.overpass.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOverpass =>
      theme.textTheme.titleMedium!.overpass.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOverpassBluegray900 =>
      theme.textTheme.titleMedium!.overpass.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get overpass {
    return copyWith(
      fontFamily: 'Overpass',
    );
  }
}
