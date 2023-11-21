// ignore_for_file: must_be_immutable

part of 'qr_scan_bloc.dart';

/// Represents the state of QrScan in the application.
class QrScanState extends Equatable {
  QrScanState({this.qrScanModelObj});

  QrScanModel? qrScanModelObj;

  @override
  List<Object?> get props => [
        qrScanModelObj,
      ];
  QrScanState copyWith({QrScanModel? qrScanModelObj}) {
    return QrScanState(
      qrScanModelObj: qrScanModelObj ?? this.qrScanModelObj,
    );
  }
}
