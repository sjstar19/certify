import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:ceertify2/core/app_export.dart';
import 'package:ceertify2/widgets/custom_elevated_button.dart';
import 'package:ceertify2/widgets/custom_outlined_button.dart';
import 'package:ceertify2/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray5001,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(
                      height: 473.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        _buildNotificationSection(context),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: SizedBox(
                                height: 412.v,
                                width: 201.h,
                                child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse18,
                                          height: 412.v,
                                          width: 201.h,
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 27.h, top: 34.v),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 1.h),
                                                        child: Text(
                                                            "lbl_hi_user".tr,
                                                            style: CustomTextStyles
                                                                .headlineSmallOnErrorContainer)),
                                                    SizedBox(height: 2.v),
                                                    Text(
                                                        "msg_welcome_to_certify"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodyLargeOnErrorContainer)
                                                  ])))
                                    ]))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                                width: 299.h,
                                margin:
                                    EdgeInsets.only(left: 26.h, bottom: 104.v),
                                child: Text("msg_select_your_preferred".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .titleLargeOverpassBluegray900))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 24.h, top: 189.v),
                                child: BlocSelector<HomeBloc, HomeState,
                                        TextEditingController?>(
                                    selector: (state) => state.searchController,
                                    builder: (context, searchController) {
                                      return CustomSearchView(
                                          width: 327.h,
                                          controller: searchController,
                                          hintText:
                                              "msg_search_your_certificates".tr,
                                          alignment: Alignment.topLeft);
                                    }))),
                        CustomOutlinedButton(
                            width: 300.h,
                            text: "lbl_scan_qr".tr,
                            onPressed: () {
                              onTapScanQR(context);
                            },
                            alignment: Alignment.bottomCenter)
                      ])),
                  SizedBox(height: 27.v),
                  CustomElevatedButton(
                      text: "lbl_enter_code".tr,
                      margin: EdgeInsets.only(left: 40.h, right: 48.h)),
                  SizedBox(height: 209.v),
                  Container(
                      height: 90.v,
                      width: 387.h,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.onErrorContainer
                              .withOpacity(1))),
                  SizedBox(height: 51.v),
                  _buildHomeSection(context)
                ]))),
            bottomNavigationBar: _buildBottomBarSection(context)));
  }

  /// Section Widget
  Widget _buildNotificationSection(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 41.v),
            decoration: AppDecoration.gradientPrimaryToErrorContainer
                .copyWith(borderRadius: BorderRadiusStyle.customBorderBL20),
            child: CustomImageView(
                imagePath: ImageConstant.imgNotification,
                height: 17.v,
                width: 16.h)));
  }

  /// Section Widget
  Widget _buildHomeSection(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
            height: 254.v,
            width: 375.h,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: _buildProduct2(context)),
                        Padding(
                            padding: EdgeInsets.only(left: 13.h),
                            child: _buildProduct2(context))
                      ])),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.h, vertical: 11.v),
                      decoration: AppDecoration.outlineBlueGray,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgBottomNavigationMenu,
                          height: 31.v,
                          width: 321.h)))
            ])));
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 124.h, right: 132.h),
        child: CustomImageView(
            imagePath: ImageConstant.imgMenu, height: 30.v, width: 133.h));
  }

  /// Common widget
  Widget _buildProduct2(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              height: 147.v,
              width: 158.h,
              padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 8.v),
              decoration: AppDecoration.fillPrimaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: CustomImageView(
                  imagePath: ImageConstant.imgImage138,
                  height: 128.v,
                  width: 96.h,
                  alignment: Alignment.center)),
          SizedBox(height: 6.v),
          Container(
              width: 152.h,
              margin: EdgeInsets.only(left: 7.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 10.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: 95.h,
                                  child: Text("msg_accu_check_active_test".tr,
                                      maxLines: null,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall!
                                          .copyWith(height: 1.90))),
                              SizedBox(height: 4.v),
                              Text("lbl_rs_112".tr,
                                  style: CustomTextStyles
                                      .titleMediumOverpassBluegray900)
                            ])),
                    Container(
                        margin: EdgeInsets.only(top: 46.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.h, vertical: 4.v),
                        decoration: AppDecoration.fillAmberA.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgVector,
                                  height: 11.adaptSize,
                                  width: 11.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text("lbl_4_2".tr,
                                      style: theme.textTheme.labelLarge))
                            ]))
                  ])),
          SizedBox(height: 14.v)
        ]));
  }

  /// Navigates to the qrScanScreen when the action is triggered.
  onTapScanQR(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.qrScanScreen,
    );
  }
}
