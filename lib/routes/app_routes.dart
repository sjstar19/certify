import 'package:flutter/material.dart';
import 'package:ceertify2/presentation/logo_screen/logo_screen.dart';
import 'package:ceertify2/presentation/walkthrough_screen/walkthrough_screen.dart';
import 'package:ceertify2/presentation/register_screen/register_screen.dart';
import 'package:ceertify2/presentation/home_screen/home_screen.dart';
import 'package:ceertify2/presentation/qr_scan_screen/qr_scan_screen.dart';
import 'package:ceertify2/presentation/details_screen/details_screen.dart';
import 'package:ceertify2/presentation/output_screen/output_screen.dart';
import 'package:ceertify2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String logoScreen = '/logo_screen';

  static const String walkthroughScreen = '/walkthrough_screen';

  static const String registerScreen = '/register_screen';

  static const String homeScreen = '/home_screen';

  static const String qrScanScreen = '/qr_scan_screen';

  static const String detailsScreen = '/details_screen';

  static const String outputScreen = '/output_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        logoScreen: LogoScreen.builder,
        walkthroughScreen: WalkthroughScreen.builder,
        registerScreen: RegisterScreen.builder,
        homeScreen: HomeScreen.builder,
        qrScanScreen: QrScanScreen.builder,
        detailsScreen: DetailsScreen.builder,
        outputScreen: OutputScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LogoScreen.builder
      };
}
