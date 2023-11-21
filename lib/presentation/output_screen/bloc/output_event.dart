// ignore_for_file: must_be_immutable

part of 'output_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Output widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OutputEvent extends Equatable {}

/// Event that is dispatched when the Output widget is first created.
class OutputInitialEvent extends OutputEvent {
  @override
  List<Object?> get props => [];
}
