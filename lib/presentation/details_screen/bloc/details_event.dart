// ignore_for_file: must_be_immutable

part of 'details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Details widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailsEvent extends Equatable {}

/// Event that is dispatched when the Details widget is first created.
class DetailsInitialEvent extends DetailsEvent {
  @override
  List<Object?> get props => [];
}
