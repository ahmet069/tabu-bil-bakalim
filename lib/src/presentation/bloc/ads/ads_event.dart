part of 'ads_bloc.dart';

abstract class AdsEvent extends Equatable {
  const AdsEvent();

  @override
  List<Object> get props => [];
}

class LoadHomeBanner extends AdsEvent {}

class LoadAllBanners extends AdsEvent {}
