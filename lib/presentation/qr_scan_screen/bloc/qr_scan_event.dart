// ignore_for_file: must_be_immutable

part of 'qr_scan_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///QrScan widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class QrScanEvent extends Equatable {}

/// Event that is dispatched when the QrScan widget is first created.
class QrScanInitialEvent extends QrScanEvent {
  @override
  List<Object?> get props => [];
}
