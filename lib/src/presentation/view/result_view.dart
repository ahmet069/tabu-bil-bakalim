import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../main.dart';
import '../../config/color/app_color.dart';
import '../../config/router/app_router.dart';
import '../../core/components/buttons/main_button.dart';
import '../bloc/game/game_bloc.dart';
import '../widget/result/score_board.dart';
import '../widget/result/winner_box.dart';

class ResultView extends StatefulWidget {
  final String team;
  const ResultView({
    super.key,
    required this.team,
  });

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  late String winnnerTeam;
  @override
  void initState() {
    context.read<GameBloc>().add(const GameFinish());
    // context.read<GameBloc>().add(StartGame(currentTeam: widget.team));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GameBloc, GameState>(builder: (context, state) {
        if (state is GameFinished) {
          if (state.currentTeam == 'team1') {
            return _pauseBuilder(state);
          } else if (state.currentTeam == 'team2') {
            return _resultBuilder(state);
          }
        }
        return const Center(
          child: Text('Bir şeyler ters gitti'),
        );
        // return _resultBuilder();
      }),
    );
  }

  Widget _pauseBuilder(GameFinished state) {
    return Scaffold(
        body: Container(
      width: 1.sw,
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Text(
            state.score1.toString(),
            style: GoogleFonts.luckiestGuy(
              color: AppColor.primaryButtonColor,
              fontSize: 100,
            ),
          ),
          MainButton(
            buttonTitle: '2. TURA BAŞLA',
            backgroundColor: AppColor.primaryButtonColor,
            titleColor: Colors.white,
            onPressed: () async {
              await router.replace(GameRouter(team: 'team2'));
            },
          )
        ],
      ),
    ));
  }

  Widget _resultBuilder(GameFinished state) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        decoration: const BoxDecoration(color: AppColor.lightBlue),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            BlocBuilder<GameBloc, GameState>(
              builder: (context, state) {
                if (state is GameFinished) {
                  if (state.score1 == state.score2) {
                    winnnerTeam = 'BERABERE';
                  } else if (state.score1 > state.score2) {
                    winnnerTeam = '1. TAKIM ';
                  } else if (state.score1 > state.score2) {
                    winnnerTeam = '2. TAKIM ';
                  }

                  return Column(
                    children: [
                      ScoreBoard(score: state.score1, teamName: '1. Takım'),
                      const SizedBox(height: 10),
                      ScoreBoard(score: state.score2, teamName: '2. Takım'),
                      WinnerBox(teamName: winnnerTeam),
                    ],
                  );
                }
                return Container();
              },
            ),
            MainButton(
              buttonTitle: 'ANA SAYFA',
              backgroundColor: AppColor.primaryButtonColor,
              titleColor: AppColor.primaryButtonTextColor,
              onPressed: () async {
                router.replace(const HomeRouter());
              },
            )
          ],
        ),
      ),
    );
  }
}
