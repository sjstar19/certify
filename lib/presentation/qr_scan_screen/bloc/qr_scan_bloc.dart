import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ceertify2/presentation/qr_scan_screen/models/qr_scan_model.dart';
part 'qr_scan_event.dart';
part 'qr_scan_state.dart';

/// A bloc that manages the state of a QrScan according to the event that is dispatched to it.
class QrScanBloc extends Bloc<QrScanEvent, QrScanState> {
  QrScanBloc(QrScanState initialState) : super(initialState) {
    on<QrScanInitialEvent>(_onInitialize);
  }

  _onInitialize(
    QrScanInitialEvent event,
    Emitter<QrScanState> emit,
  ) async {}
}
