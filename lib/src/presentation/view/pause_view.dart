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

class PauseView extends StatefulWidget {
  const PauseView({super.key});

  @override
  State<PauseView> createState() => _PauseViewState();
}

class _PauseViewState extends State<PauseView> {
  @override
  void initState() {
    context.read<GameBloc>().add(const GameFinish());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GameBloc, GameState>(
        builder: (context, state) {
          if (state is GameFinished) {
            return _pauseBuilder(state);
          }
          return Container();
        },
      ),
    );
  }

  Widget _pauseBuilder(GameFinished state) {
    return Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FloatingActionButton(
            backgroundColor: AppColor.buttonRed,
            onPressed: () async {
              // await router.replace(const HomeRouter());
              return showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Çıkmak istediğinize emin misiniz?'),
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text('HAYIR'),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          Navigator.of(context).pop(true);
                          await router.replace(const HomeRouter());
                        },
                        child: const Text('EVET'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Icon(
              Icons.exit_to_app,
              size: 30,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        body: SafeArea(
          child: SizedBox(
            width: 1.sw,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Column(
                  children: [
                    ScoreBoard(score: state.score1, teamName: '1. TAKIM'),
                    MainButton(
                      buttonTitle: '2. TURA BAŞLA',
                      backgroundColor: AppColor.primaryButtonColor,
                      titleColor: Colors.white,
                      onPressed: () async {
                        await router.replace(
                          GameRouter(team: 'team2', newDuration: 90),
                        );
                      },
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: const MyAdmobBanner(
                    bannerId: 'ca-app-pub-4086698259318942/4702206267',
                    adSize: AdSize.mediumRectangle,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
