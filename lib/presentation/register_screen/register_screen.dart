import 'bloc/register_bloc.dart';
import 'models/register_model.dart';
import 'package:ceertify2/core/app_export.dart';
import 'package:ceertify2/core/utils/validation_functions.dart';
import 'package:ceertify2/widgets/custom_checkbox_button.dart';
import 'package:ceertify2/widgets/custom_elevated_button.dart';
import 'package:ceertify2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<RegisterBloc>(
        create: (context) =>
            RegisterBloc(RegisterState(registerModelObj: RegisterModel()))
              ..add(RegisterInitialEvent()),
        child: RegisterScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.h, vertical: 26.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 40.v,
                          width: 42.h,
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapImgArrowLeft(context);
                          }),
                      SizedBox(height: 72.v),
                      Text("lbl_login".tr,
                          style: CustomTextStyles
                              .headlineMediumMontserratOnErrorContainer),
                      SizedBox(height: 53.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 21.h),
                          child: BlocSelector<RegisterBloc, RegisterState,
                                  TextEditingController?>(
                              selector: (state) => state.userIdLabelController,
                              builder: (context, userIdLabelController) {
                                return CustomTextFormField(
                                    controller: userIdLabelController,
                                    hintText: "lbl_user_id".tr);
                              })),
                      SizedBox(height: 31.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 21.h),
                          child: BlocBuilder<RegisterBloc, RegisterState>(
                              builder: (context, state) {
                            return CustomTextFormField(
                                controller: state.passwordController,
                                hintText: "lbl_password".tr,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                suffix: InkWell(
                                    onTap: () {
                                      context.read<RegisterBloc>().add(
                                          ChangePasswordVisibilityEvent(
                                              value: !state.isShowPassword));
                                    },
                                    child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            30.h, 17.v, 19.h, 18.v),
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgEntypoeyewithline,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize))),
                                suffixConstraints:
                                    BoxConstraints(maxHeight: 55.v),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "err_msg_please_enter_valid_password"
                                        .tr;
                                  }
                                  return null;
                                },
                                obscureText: state.isShowPassword,
                                contentPadding: EdgeInsets.only(
                                    left: 30.h, top: 15.v, bottom: 15.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.custom,
                                filled: false);
                          })),
                      SizedBox(height: 30.v),
                      _buildRememberMeCheckbox(context),
                      SizedBox(height: 29.v),
                      CustomElevatedButton(
                          height: 55.v,
                          text: "lbl_sign_in".tr,
                          margin: EdgeInsets.symmetric(horizontal: 21.h),
                          buttonStyle: CustomButtonStyles.fillGray,
                          buttonTextStyle: CustomTextStyles.titleMediumBlack900,
                          onPressed: () {
                            onTapSignIn(context);
                          }),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildRememberMeCheckbox(BuildContext context) {
    return BlocSelector<RegisterBloc, RegisterState, bool?>(
        selector: (state) => state.rememberMeCheckbox,
        builder: (context, rememberMeCheckbox) {
          return CustomCheckboxButton(
              text: "lbl_remember_me".tr,
              value: rememberMeCheckbox,
              onChange: (value) {
                context
                    .read<RegisterBloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              });
        });
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
