import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/tabu/tabu.dart';
import '../../../domain/usecase/tabu_usecase.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final TabuUsecase _usecase;
  final seed = Random.secure();
  late int skipCount;
  late int ttrue;
  late int tabu;
  late int countIndex;
  late int score1;
  late int score2;
  var tabuData = <Tabu>[];

  GameBloc(this._usecase) : super(const GameInitial()) {
    on<StartGame>((event, emit) async {
      try {
        tabuData = await _usecase.GetRandomTabo();
        tabuData.shuffle(seed);

        skipCount = 4;
        tabu = 0;
        countIndex = 0;
        ttrue = 0;
        emit(
          GameStarted(
            skipCount: skipCount,
            tabuData: tabuData,
            ttrue: ttrue,
            tabu: tabu,
            countIndex: countIndex,
          ),
        );
      } catch (_) {
        rethrow;
      }
    });
    on<SkipTabu>((event, emit) async {
      if (skipCount > 0) {
        countIndex++;
        skipCount--;
      }
      emit(GameUpdateStatus(
          skipCount: skipCount,
          tabuData: tabuData,
          ttrue: ttrue,
          tabu: tabu,
          countIndex: countIndex));
    });
    on<TabuTabu>((event, emit) async {});
    on<TrueTabu>((event, emit) async {});
  }
}
