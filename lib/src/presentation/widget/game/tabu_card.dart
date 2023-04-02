import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/color/app_color.dart';
import '../../bloc/game/game_bloc.dart';

class TabuCard extends StatefulWidget {
  const TabuCard({super.key});

  @override
  State<TabuCard> createState() => _TabuCardState();
}

class _TabuCardState extends State<TabuCard> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        if (state is GameInitial) {
          return Container();
        } else if (state is GameStarted) {
          final item = state.tabuData[state.countIndex];
          return Column(
            children: [
              _mainWord(item.word.toString()),
              Container(
                width: .75.sw,
                decoration: const BoxDecoration(
                  color: AppColor.tabuSecondaryBackground,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    _tabuWord(item.tabu1.toString()),
                    _tabuWord(item.tabu2.toString()),
                    _tabuWord(item.tabu3.toString()),
                    _tabuWord(item.tabu4.toString()),
                    _tabuWord(item.tabu5.toString()),
                  ],
                ),
              ),
            ],
          );
        } else if (state is GameUpdateStatus) {
          final item = state.tabuData[state.countIndex];

          return Column(
            children: [
              _mainWord(item.word.toString()),
              Container(
                width: .75.sw,
                decoration: const BoxDecoration(
                  color: AppColor.tabuSecondaryBackground,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    _tabuWord(item.tabu1.toString()),
                    _tabuWord(item.tabu2.toString()),
                    _tabuWord(item.tabu3.toString()),
                    _tabuWord(item.tabu4.toString()),
                    _tabuWord(item.tabu5.toString()),
                  ],
                ),
              ),
            ],
          );
        } else {
          return Container();
        }
      },
    );
  }

  Widget _mainWord(String word) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      width: .75.sw,
      height: 70,
      alignment: Alignment.center,
      child: Text(
        word,
        style: const TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _tabuWord(String word) {
    return Container(
      height: 70,
      alignment: Alignment.center,
      child: Text(
        word,
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
