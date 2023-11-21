import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ceertify2/presentation/register_screen/models/register_model.dart';
part 'register_event.dart';
part 'register_state.dart';

/// A bloc that manages the state of a Register according to the event that is dispatched to it.
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(RegisterState initialState) : super(initialState) {
    on<RegisterInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(rememberMeCheckbox: event.value));
  }

  _onInitialize(
    RegisterInitialEvent event,
    Emitter<RegisterState> emit,
  ) async {
    emit(state.copyWith(
        userIdLabelController: TextEditingController(),
        passwordController: TextEditingController(),
        isShowPassword: true,
        rememberMeCheckbox: false));
  }
}
