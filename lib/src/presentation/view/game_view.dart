import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/game/game_bloc.dart';
import '../widget/game/count_down.dart';
import '../widget/game/game_buttons.dart';
import '../widget/game/score_widget.dart';
import '../widget/game/tabu_card.dart';

class GameView extends StatefulWidget {
  final String team;
  const GameView({super.key, required this.team});

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  @override
  void initState() {
    context.read<GameBloc>().add(StartGame(currentTeam: widget.team));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CountDown(team: widget.team),
            Column(
              children: const [
                TabuCard(),
                ScoreWidget(),
              ],
            ),
            const GameButtons(),
          ],
        ),
      ),
    );
  }
}
