import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/game/game_bloc.dart';
import '../widget/game/game_buttons.dart';
import '../widget/game/tabu_card.dart';

class GameView extends StatefulWidget {
  const GameView({super.key});

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  @override
  void initState() {
    context.read<GameBloc>().add(const StartGame());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            bottom: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(),
                TabuCard(),
                GameButtons(),
              ],
            ),
          ),
        );
      },
    );
  }
}
