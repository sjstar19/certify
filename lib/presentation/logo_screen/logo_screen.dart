import 'bloc/logo_bloc.dart';
import 'models/logo_model.dart';
import 'package:ceertify2/core/app_export.dart';
import 'package:flutter/material.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LogoBloc>(
        create: (context) => LogoBloc(LogoState(logoModelObj: LogoModel()))
          ..add(LogoInitialEvent()),
        child: LogoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<LogoBloc, LogoState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 5.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgImageRemovebgPreview,
                            height: 191.v,
                            width: 390.h,
                            onTap: () {
                              onTapImgImage(context);
                            })
                      ]))));
    });
  }

  /// Navigates to the walkthroughScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.walkthroughScreen,
    );
  }
}
