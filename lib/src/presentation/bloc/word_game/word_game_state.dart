part of 'word_game_bloc.dart';

abstract class WordGameState extends Equatable {
  const WordGameState();

  @override
  List<Object> get props => [];
}

class WordGameInitial extends WordGameState {}

class WordReady extends WordGameState {
  const WordReady();
}

class GameStarted extends WordGameState {}

class GameFinished extends WordGameState {}
