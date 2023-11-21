import 'bloc/qr_scan_bloc.dart';
import 'models/qr_scan_model.dart';
import 'package:ceertify2/core/app_export.dart';
import 'package:ceertify2/widgets/app_bar/appbar_title.dart';
import 'package:ceertify2/widgets/app_bar/custom_app_bar.dart';
import 'package:ceertify2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class QrScanScreen extends StatelessWidget {
  const QrScanScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<QrScanBloc>(
        create: (context) =>
        QrScanBloc(QrScanState(qrScanModelObj: QrScanModel()))
          ..add(QrScanInitialEvent()),
        child: QrScanScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<QrScanBloc, QrScanState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.onError,
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 21.h),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 10.v),
                        _buildTwo(context),
                        SizedBox(height: 73.v),
                        SizedBox(
                            height: 75.v,
                            width: 284.h,
                            child:
                            Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 19.v),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorGray5033x35,
                                                height: 33.v,
                                                width: 35.h),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 5.h, top: 2.v),
                                                child: Text(
                                                    "lbl_scan_qr_code".tr,
                                                    style: theme.textTheme
                                                        .headlineMedium))
                                          ]))),
                              CustomElevatedButton(
                                  height: 75.v,
                                  width: 284.h,
                                  text: "msg_upload_local_files".tr,
                                  leftIcon: Container(
                                      margin: EdgeInsets.only(right: 5.h),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgVectorGray5033x35,
                                          height: 33.v,
                                          width: 35.h)),
                                  buttonTextStyle:
                                  theme.textTheme.headlineMedium!,
                                  onPressed: () {
                                    onTapUploadLocalFiles(context);
                                  },
                                  alignment: Alignment.center)
                            ]))
                      ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: SizedBox(
            height: 36.v,
            width: 261.h,
            child: Stack(alignment: Alignment.center, children: [
              AppbarTitle(text: "msg_scan_your_qr_code".tr),
              AppbarTitle(text: "msg_scan_your_qr_code".tr)
            ])));
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return SizedBox(
        height: 372.v,
        width: 346.h,
        child: Stack(alignment: Alignment.topRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage1,
              height: 273.v,
              width: 247.h,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgVectorGray50,
              height: 57.adaptSize,
              width: 57.adaptSize,
              alignment: Alignment.topRight),
          CustomImageView(
              imagePath: ImageConstant.imgGoogle,
              height: 57.adaptSize,
              width: 57.adaptSize,
              alignment: Alignment.bottomRight),
          CustomImageView(
              imagePath: ImageConstant.imgVectorGray5057x57,
              height: 57.adaptSize,
              width: 57.adaptSize,
              alignment: Alignment.topLeft),
          CustomImageView(
              imagePath: ImageConstant.imgVectorGray5057x57,
              height: 57.adaptSize,
              width: 57.adaptSize,
              alignment: Alignment.bottomLeft),
          Align(
              alignment: Alignment.center,
              child: GestureDetector(
                  onTap: () {
                    onTapFour(context);
                  },
                  child: SizedBox(
                      height: 372.v,
                      width: 346.h,
                      child: Stack(alignment: Alignment.topRight, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage1,
                            height: 273.v,
                            width: 247.h,
                            alignment: Alignment.center),
                        CustomImageView(
                            imagePath: ImageConstant.imgVectorGray50,
                            height: 57.adaptSize,
                            width: 57.adaptSize,
                            alignment: Alignment.topRight),
                        CustomImageView(
                            imagePath: ImageConstant.imgGoogle,
                            height: 57.adaptSize,
                            width: 57.adaptSize,
                            alignment: Alignment.bottomRight),
                        CustomImageView(
                            imagePath: ImageConstant.imgVectorGray5057x57,
                            height: 57.adaptSize,
                            width: 57.adaptSize,
                            alignment: Alignment.topLeft),
                        CustomImageView(
                            imagePath: ImageConstant.imgVectorGray5057x57,
                            height: 57.adaptSize,
                            width: 57.adaptSize,
                            alignment: Alignment.bottomLeft)
                      ]))))
        ]));
  }

  /// Navigates to the detailsScreen when the action is triggered.
  onTapFour(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailsScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapUploadLocalFiles(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}


