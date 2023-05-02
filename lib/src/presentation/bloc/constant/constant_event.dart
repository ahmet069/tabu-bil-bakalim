part of 'constant_bloc.dart';

abstract class ConstantEvent extends Equatable {
  const ConstantEvent();

  @override
  List<Object> get props => [];
}

class ChangeDuration extends ConstantEvent {
  final int newDuration;
  const ChangeDuration({
    required this.newDuration,
  });
}

class GameInit extends ConstantEvent {
  const GameInit();
}
