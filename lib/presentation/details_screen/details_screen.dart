import 'bloc/details_bloc.dart';
import 'models/details_model.dart';
import 'package:ceertify2/core/app_export.dart';
import 'package:ceertify2/widgets/custom_elevated_button.dart';
import 'package:ceertify2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailsBloc>(
        create: (context) =>
        DetailsBloc(DetailsState(detailsModelObj: DetailsModel())
          ..add(DetailsInitialEvent()),
        child: DetailsScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<DetailsBloc, DetailsState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray100,
              body: Container(
                  width: double.maxFinite,
                  padding:
                  EdgeInsets.symmetric(horizontal: 6.h, vertical: 24.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowLeftBlack900,
                        height: 40.v,
                        width: 42.h,
                        alignment: Alignment.centerLeft,
                        onTap: () {
                          onTapImgArrowLeft(context);
                        }),
                    SizedBox(height: 35.v),
                    Text("msg_certificate_details".tr,
                        style: CustomTextStyles.headlineLargeInterOnPrimary),
                    SizedBox(height: 13.v),
                    Text("msg_verification_process".tr,
                        style: theme.textTheme.bodyLarge),
                    Spacer(flex: 49),
                    Container(
                        width: 282.h,
                        margin: EdgeInsets.only(left: 44.h, right: 51.h),
                        child: Text("msg_certificate_id".tr,
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.titleLargeOverpassBlack900
                                .copyWith(height: 1.50))),
                    Spacer(flex: 50),
                    Text("lbl_validate_using".tr,
                        style: theme.textTheme.bodyLarge),
                    SizedBox(height: 1.v),
                    CustomElevatedButton(
                        text: "lbl_etherscan".tr,
                        margin: EdgeInsets.only(left: 34.h, right: 42.h),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                        onPressed: () {
                          onTapEtherscan(context);
                        }),
                    SizedBox(height: 8.v),
                    CustomOutlinedButton(
                        text: "msg_open_in_digilocker".tr,
                        margin: EdgeInsets.only(left: 34.h, right: 43.h),
                        rightIcon: Container(
                            margin: EdgeInsets.only(left: 1.h),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgVectorBlack900,
                                height: 18.adaptSize,
                                width: 18.adaptSize)),
                        buttonStyle: CustomButtonStyles.outlineBlueGrayFcTL20),
                    SizedBox(height: 7.v)
                  ]))));
    });
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the outputScreen when the action is triggered.
  onTapEtherscan(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.outputScreen,
    );
  }
}
