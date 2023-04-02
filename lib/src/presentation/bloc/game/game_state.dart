// ignore_for_file: flutter_style_todos

part of 'game_bloc.dart';

abstract class GameState extends Equatable {
  const GameState();

  @override
  List<Object> get props => [];
}

class GameInitial extends GameState {
  const GameInitial();

  @override
  List<Object> get props => [];
}

class GameError extends GameState {
  final String message;

  const GameError({
    required this.message,
  });

  @override
  List<Object> get props => [];
}

class GameStarted extends GameState {
  final List<Tabu> tabuData;
  final int skipCount;
  final int ttrue;
  final int tabu;
  final int countIndex;
  const GameStarted({
    required this.tabuData,
    required this.skipCount,
    required this.ttrue,
    required this.tabu,
    required this.countIndex,
  });
  @override
  List<Object> get props => [];
}

class GameUpdateStatus extends GameState {
  final int skipCount;
  final List<Tabu> tabuData;
  final int ttrue;
  final int tabu;
  final int countIndex;
  const GameUpdateStatus({
    required this.skipCount,
    required this.tabuData,
    required this.ttrue,
    required this.tabu,
    required this.countIndex,
  });

  @override
  List<Object> get props => [skipCount, tabuData, ttrue, tabu, countIndex];
}
