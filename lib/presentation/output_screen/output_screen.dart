import 'bloc/output_bloc.dart';
import 'models/output_model.dart';
import 'package:ceertify2/core/app_export.dart';
import 'package:ceertify2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  const OutputScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OutputBloc>(
        create: (context) =>
            OutputBloc(OutputState(outputModelObj: OutputModel()))
              ..add(OutputInitialEvent()),
        child: OutputScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<OutputBloc, OutputState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.h, vertical: 21.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeftBlack900,
                            height: 40.v,
                            width: 42.h,
                            onTap: () {
                              onTapImgArrowLeft(context);
                            }),
                        Spacer(flex: 54),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage139,
                            height: 156.v,
                            width: 146.h,
                            alignment: Alignment.center),
                        SizedBox(height: 53.v),
                        Padding(
                            padding: EdgeInsets.only(left: 65.h),
                            child: Text("msg_certificate_verified".tr,
                                style: theme.textTheme.headlineSmall)),
                        SizedBox(height: 5.v),
                        Container(
                            width: 264.h,
                            margin: EdgeInsets.only(left: 38.h, right: 59.h),
                            child: Text("msg_we_confirm_the_authenticity".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodyLargeBluegray900
                                    .copyWith(height: 1.50))),
                        Spacer(flex: 45),
                        SizedBox(height: 60.v),
                        CustomElevatedButton(
                            height: 45.v,
                            text: "lbl_done".tr.toUpperCase(),
                            margin: EdgeInsets.only(left: 16.h, right: 15.h),
                            buttonStyle: CustomButtonStyles.outlineIndigoA,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumOverpass,
                            onPressed: () {
                              onTapDone(context);
                            },
                            alignment: Alignment.center)
                      ]))));
    });
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapDone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
