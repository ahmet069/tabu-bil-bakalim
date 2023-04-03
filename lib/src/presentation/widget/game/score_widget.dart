import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bloc/game/game_bloc.dart';

class ScoreWidget extends StatelessWidget {
  const ScoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        if (state is GameStarted) {
          final score = state.ttrue - state.tabu;
          return _score(score.toString());
        } else if (state is GameUpdateStatus) {
          final score = state.ttrue - state.tabu;
          return _score(score.toString());
        } else {
          return const CircularProgressIndicator.adaptive();
        }
      },
    );
  }

  Widget _score(String score) {
    return Container(
      margin: const EdgeInsets.all(30),
      child: Text(
        'SKOR $score',
        style: GoogleFonts.luckiestGuy(fontSize: 40),
      ),
    );
  }
}
