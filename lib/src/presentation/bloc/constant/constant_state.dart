part of 'constant_bloc.dart';

abstract class ConstantState extends Equatable {
  const ConstantState();

  @override
  List<Object> get props => [];
}

class ConstantInitial extends ConstantState {}

class GameInitial extends ConstantState {
  final int duration;
  const GameInitial({
    required this.duration,
  });

  @override
  List<Object> get props => [duration];
}
