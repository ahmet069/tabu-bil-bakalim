part of 'ads_bloc.dart';

abstract class AdsState extends Equatable {
  const AdsState();

  @override
  List<Object> get props => [];
}

class AdsInitial extends AdsState {}

class AdsLoaded extends AdsState {}

class AdsError extends AdsState {}
