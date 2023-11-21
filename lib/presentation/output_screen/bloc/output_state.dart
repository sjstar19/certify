// ignore_for_file: must_be_immutable

part of 'output_bloc.dart';

/// Represents the state of Output in the application.
class OutputState extends Equatable {
  OutputState({this.outputModelObj});

  OutputModel? outputModelObj;

  @override
  List<Object?> get props => [
        outputModelObj,
      ];
  OutputState copyWith({OutputModel? outputModelObj}) {
    return OutputState(
      outputModelObj: outputModelObj ?? this.outputModelObj,
    );
  }
}
