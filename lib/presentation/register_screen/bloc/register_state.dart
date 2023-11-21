// ignore_for_file: must_be_immutable

part of 'register_bloc.dart';

/// Represents the state of Register in the application.
class RegisterState extends Equatable {
  RegisterState({
    this.userIdLabelController,
    this.passwordController,
    this.isShowPassword = true,
    this.rememberMeCheckbox = false,
    this.registerModelObj,
  });

  TextEditingController? userIdLabelController;

  TextEditingController? passwordController;

  RegisterModel? registerModelObj;

  bool isShowPassword;

  bool rememberMeCheckbox;

  @override
  List<Object?> get props => [
        userIdLabelController,
        passwordController,
        isShowPassword,
        rememberMeCheckbox,
        registerModelObj,
      ];
  RegisterState copyWith({
    TextEditingController? userIdLabelController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? rememberMeCheckbox,
    RegisterModel? registerModelObj,
  }) {
    return RegisterState(
      userIdLabelController:
          userIdLabelController ?? this.userIdLabelController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      rememberMeCheckbox: rememberMeCheckbox ?? this.rememberMeCheckbox,
      registerModelObj: registerModelObj ?? this.registerModelObj,
    );
  }
}
