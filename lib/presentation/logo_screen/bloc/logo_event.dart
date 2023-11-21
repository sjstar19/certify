// ignore_for_file: must_be_immutable

part of 'logo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Logo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LogoEvent extends Equatable {}

/// Event that is dispatched when the Logo widget is first created.
class LogoInitialEvent extends LogoEvent {
  @override
  List<Object?> get props => [];
}
