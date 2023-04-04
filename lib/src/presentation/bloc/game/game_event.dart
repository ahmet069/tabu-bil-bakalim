part of 'game_bloc.dart';

abstract class GameEvent extends Equatable {
  const GameEvent();

  @override
  List<Object> get props => [];
}

//* oyunun başında yapılması gerekenler
class StartGame extends GameEvent {
  final String currentTeam;
  final int newDuration;
  const StartGame({
    required this.currentTeam,
    required this.newDuration,
  });
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

//* oyun bitiminde yapılması gerekenler
class GameFinish extends GameEvent {
  const GameFinish();
}

class ChangeDuration extends GameEvent {
  final int newDuration;
  const ChangeDuration({required this.newDuration});
}
