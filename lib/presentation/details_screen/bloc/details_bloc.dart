import 'package:ceertify2/presentation/details_screen/details_screen.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ceertify2/presentation/details_screen/models/details_model.dart';
part 'details_event.dart';
part 'details_state.dart';

/// A bloc that manages the state of a Details according to the event that is dispatched to it.
class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc(DetailsState initialState, {required DetailsScreen child}) : super(initialState) {
    on<DetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailsInitialEvent event,
    Emitter<DetailsState> emit,
  ) async {}
}
