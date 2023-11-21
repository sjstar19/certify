// ignore_for_file: must_be_immutable

part of 'logo_bloc.dart';

/// Represents the state of Logo in the application.
class LogoState extends Equatable {
  LogoState({this.logoModelObj});

  LogoModel? logoModelObj;

  @override
  List<Object?> get props => [
        logoModelObj,
      ];
  LogoState copyWith({LogoModel? logoModelObj}) {
    return LogoState(
      logoModelObj: logoModelObj ?? this.logoModelObj,
    );
  }
}
