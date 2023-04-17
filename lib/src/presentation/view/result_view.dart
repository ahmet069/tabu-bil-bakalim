import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../../main.dart';
import '../../config/color/app_color.dart';
import '../../config/router/app_router.dart';
import '../../core/components/admob/admob_banner.dart';
import '../../core/components/buttons/main_button.dart';
import '../bloc/game/game_bloc.dart';
import '../widget/result/score_board.dart';
import '../widget/result/winner_box.dart';

class ResultView extends StatefulWidget {
  final InterstitialAd? interstitialAd;
  final String team;
  const ResultView({
    super.key,
    required this.team,
    this.interstitialAd,
  });

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  late String winnnerTeam = '';
  @override
  void initState() {
    context.read<GameBloc>().add(const GameFinish());
    widget.interstitialAd?.show();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GameBloc, GameState>(builder: (context, state) {
        if (state is GameFinished) {
          if (state.currentTeam == 'team2') {
            return _resultBuilder(state);
          }
        }
        return Column(
          children: [
            const Text('Bir şeyler ters gitti'),
            MainButton(
              buttonTitle: 'Ana Sayfa',
              backgroundColor: AppColor.primaryButtonTextColor,
              titleColor: AppColor.primaryButtonTextColor,
              onPressed: () async {
                await router.replace(const HomeRouter());
              },
            )
          ],
        );
      }),
    );
  }

  Widget _resultBuilder(GameFinished state) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        decoration: const BoxDecoration(color: AppColor.lightBlue),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const MyAdmobBanner(
              bannerId: 'ca-app-pub-4086698259318942/2076042929',
              adSize: AdSize.fullBanner,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: .4.sw,
              height: .4.sw,
            ),
            BlocBuilder<GameBloc, GameState>(
              builder: (context, state) {
                if (state is GameFinished) {
                  if (state.score1 == state.score2) {
                    winnnerTeam = 'BERABERE';
                  } else if (state.score1 > state.score2) {
                    winnnerTeam = 'KAZANAN: 1. TAKIM ';
                  } else if (state.score1 < state.score2) {
                    winnnerTeam = 'KAZANAN: 2. TAKIM ';
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
                return const Text('Bir şeyler ters gitti');
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
