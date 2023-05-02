import 'dart:math';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/tabu/tabu.dart';
import '../../../domain/usecase/tabu_usecase.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final TabuUsecase _usecase;
  final _seed = Random.secure();
  late int duration = 75;
  late int skipCount;
  late int ttrue;
  late int tabu;
  late int countIndex;
  late int score1 = 0;
  late int score2 = 0;

  late String currentTeam;
  var tabuData = <Tabu>[];

  Future<void> _trueEffect() async {
    await AssetsAudioPlayer.newPlayer().open(
      Audio('assets/audios/true.mp3'),
      autoStart: true,
      showNotification: true,
    );
  }

  Future<void> _falseEffect() async {
    await AssetsAudioPlayer.newPlayer().open(
      Audio('assets/audios/false.mp3'),
      autoStart: true,
      showNotification: true,
    );
  }

  GameBloc(this._usecase) : super(const GameInitial()) {
    on<StartGame>((event, emit) async {
      try {
        tabuData = await _usecase.GetRandomTabo();
        tabuData.shuffle(_seed);
        skipCount = 4;
        tabu = 0;
        countIndex = 0;
        ttrue = 0;
        duration = event.newDuration;
        currentTeam = event.currentTeam;
        emit(
          GameStarted(
            skipCount: skipCount,
            tabuData: tabuData,
            ttrue: ttrue,
            tabu: tabu,
            countIndex: countIndex,
            duration: duration,
            currentTeam: currentTeam,
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
      emit(
        GameUpdateStatus(
            duration: duration,
            skipCount: skipCount,
            tabuData: tabuData,
            ttrue: ttrue,
            tabu: tabu,
            countIndex: countIndex),
      );
    });
    on<TabuTabu>((event, emit) async {
      tabu++;
      countIndex++;
      await _falseEffect();
      emit(
        GameUpdateStatus(
          duration: duration,
          skipCount: skipCount,
          tabuData: tabuData,
          ttrue: ttrue,
          tabu: tabu,
          countIndex: countIndex,
        ),
      );
    });
    on<TrueTabu>((event, emit) async {
      ttrue++;
      countIndex++;
      await _trueEffect();
      emit(
        GameUpdateStatus(
          duration: duration,
          skipCount: skipCount,
          tabuData: tabuData,
          ttrue: ttrue,
          tabu: tabu,
          countIndex: countIndex,
        ),
      );
    });
    on<GameFinish>((event, emit) async {
      try {
        if (currentTeam == 'team1') {
          score1 = ttrue - tabu;
          score2 = score2;
        } else {
          score2 = ttrue - tabu;
          score1 = score1;
        }
        print('game finish');
        emit(GameFinished(
          currentTeam: currentTeam,
          score1: score1,
          score2: score2,
        ));
      } on Exception catch (e) {
        print(e);
      }
    });
    on<ChangeDuration>((event, emit) => {
          duration = event.newDuration,
        });
  }
}
