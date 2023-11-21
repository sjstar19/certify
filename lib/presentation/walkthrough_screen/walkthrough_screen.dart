import 'bloc/walkthrough_bloc.dart';
import 'models/walkthrough_model.dart';
import 'package:ceertify2/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalkthroughScreen extends StatelessWidget {
  const WalkthroughScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<WalkthroughBloc>(
      create: (context) => WalkthroughBloc(WalkthroughState(
        walkthroughModelObj: WalkthroughModel(),
      ))
        ..add(WalkthroughInitialEvent()),
      child: WalkthroughScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<WalkthroughBloc, WalkthroughState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 66.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 79.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage2,
                    height: 276.v,
                    width: 354.h,
                  ),
                  SizedBox(height: 90.v),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "msg_verify_certificates".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Container(
                    width: 260.h,
                    margin: EdgeInsets.only(
                      left: 34.h,
                      right: 58.h,
                    ),
                    child: Text(
                      "msg_our_innovative_platform".tr,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeBluegray500a5,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      right: 35.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                          // GestureDetector for lbl_skip
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.homeScreen);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text(
                              "lbl_skip".tr,
                              style: CustomTextStyles.bodyMedium14,
                            ),
                          ),
                        ),
                        Container(
                          height: 4.v,
                          margin: EdgeInsets.only(
                            top: 11.v,
                            bottom: 3.v,
                          ),
                          child: AnimatedSmoothIndicator(
                            activeIndex: 0,
                            count: 4,
                            effect: ScrollingDotsEffect(
                              spacing: 8,
                              activeDotColor: appTheme.indigoA400,
                              dotColor: appTheme.gray400,
                              dotHeight: 4.v,
                              dotWidth: 4.h,
                            ),
                          ),
                        ),
                        GestureDetector(
                          // GestureDetector for lbl_next
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.registerScreen);
                          },
                          child: Text(
                            "lbl_next".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
