part of 'game_bloc.dart';

abstract class GameEvent extends Equatable {
  const GameEvent();

  @override
  List<Object> get props => [];
}

//* oyunun başında yapılması gerekenler
class StartGame extends GameEvent {
  const StartGame();
}

//* pas hakkını kullanır
class SkipTabu extends GameEvent {
  const SkipTabu();
}

//* doğru sayısını arttırır
class TrueTabu extends GameEvent {
  const TrueTabu();
}

//* tabu sayısını arttırır
class TabuTabu extends GameEvent {
  const TabuTabu();
}

class GameFinish extends GameEvent {
  final String currentTeam;
  const GameFinish({
    required this.currentTeam,
  });
}
