import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ceertify2/presentation/output_screen/models/output_model.dart';
part 'output_event.dart';
part 'output_state.dart';

/// A bloc that manages the state of a Output according to the event that is dispatched to it.
class OutputBloc extends Bloc<OutputEvent, OutputState> {
  OutputBloc(OutputState initialState) : super(initialState) {
    on<OutputInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OutputInitialEvent event,
    Emitter<OutputState> emit,
  ) async {}
}
