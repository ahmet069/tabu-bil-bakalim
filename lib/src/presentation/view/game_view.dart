import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../main.dart';
import '../../config/color/app_color.dart';
import '../../config/router/app_router.dart';
import '../../core/components/dialog/yes_no_dialog.dart';
import '../bloc/game/game_bloc.dart';
import '../widget/game/count_down.dart';
import '../widget/game/game_buttons.dart';
import '../widget/game/score_widget.dart';
import '../widget/game/tabu_card.dart';

class GameView extends StatefulWidget {
  final String team;
  final int newDuration;
  const GameView({
    super.key,
    required this.team,
    required this.newDuration,
  });

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  @override
  void initState() {
    context.read<GameBloc>().add(StartGame(currentTeam: widget.team, newDuration: widget.newDuration));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FloatingActionButton(
          backgroundColor: AppColor.buttonRed,
          elevation: 20,
          onPressed: () async {
            // await router.replace(const HomeRouter());
            const YesNoDialog(
                title: 'Deneme', backgroundColor: Colors.white, content: 'Çıkmak istediğinize emin misiniz ?');
            return showDialog(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  child: AlertDialog(
                    backgroundColor: AppColor.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
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
                  ),
                );
              },
            );
          },
          child: const Icon(
            Icons.exit_to_app,
            size: 28,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CountDown(team: widget.team),
            const TabuCard(),
            const ScoreWidget(),
            const GameButtons(),
          ],
        ),
      ),
    );
  }
}
