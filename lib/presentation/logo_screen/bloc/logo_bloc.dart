import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ceertify2/presentation/logo_screen/models/logo_model.dart';
part 'logo_event.dart';
part 'logo_state.dart';

/// A bloc that manages the state of a Logo according to the event that is dispatched to it.
class LogoBloc extends Bloc<LogoEvent, LogoState> {
  LogoBloc(LogoState initialState) : super(initialState) {
    on<LogoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LogoInitialEvent event,
    Emitter<LogoState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.walkthroughScreen,
      );
    });
  }
}
