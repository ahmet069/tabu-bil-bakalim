// ignore_for_file: avoid_dynamic_calls, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/color/app_color.dart';
import '../../bloc/game/game_bloc.dart';

class GameButtons extends StatefulWidget {
  const GameButtons({super.key});

  @override
  State<GameButtons> createState() => GameButtonsState();
}

class GameButtonsState extends State<GameButtons> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        if (state is GameStarted) {
          return Row(
            children: [
              _button(
                onPressed: () {
                  context.read<GameBloc>().add(const TabuTabu());
                },
                backgroundColor: AppColor.buttonRed,
                buttonTitle: 'TABU',
                textColor: Colors.white,
                value: state.tabu,
              ),
              _button(
                onPressed: () {
                  context.read<GameBloc>().add(const SkipTabu());
                },
                backgroundColor: AppColor.buttonYellow,
                buttonTitle: 'PAS',
                value: state.skipCount,
              ),
              _button(
                onPressed: () {
                  context.read<GameBloc>().add(const TrueTabu());
                },
                backgroundColor: AppColor.buttonGreen,
                buttonTitle: 'DOĞRU',
                value: state.ttrue,
              ),
            ],
          );
        }
        if (state is GameUpdateStatus) {
          return Row(
            children: [
              _button(
                onPressed: () {
                  context.read<GameBloc>().add(const TabuTabu());
                },
                backgroundColor: AppColor.buttonRed,
                buttonTitle: 'TABU',
                textColor: Colors.white,
                value: state.tabu,
              ),
              _button(
                onPressed: () {
                  context.read<GameBloc>().add(const SkipTabu());
                },
                backgroundColor: AppColor.buttonYellow,
                buttonTitle: 'PAS',
                value: state.skipCount,
              ),
              _button(
                onPressed: () {
                  context.read<GameBloc>().add(const TrueTabu());
                },
                backgroundColor: AppColor.buttonGreen,
                buttonTitle: 'DOĞRU',
                value: state.ttrue,
              ),
            ],
          );
        }
        return Row(
          children: [
            _button(
              onPressed: () {
                context.read<GameBloc>().add(const TabuTabu());
              },
              backgroundColor: AppColor.buttonRed,
              buttonTitle: 'TABU',
              textColor: Colors.white,
              value: 2,
            ),
            _button(
              onPressed: () {
                context.read<GameBloc>().add(const SkipTabu());
              },
              backgroundColor: AppColor.buttonYellow,
              buttonTitle: 'PAS',
              value: 0,
            ),
            _button(
              onPressed: () {
                context.read<GameBloc>().add(const TrueTabu());
              },
              backgroundColor: AppColor.buttonGreen,
              buttonTitle: 'DOĞRU',
              value: 2,
            ),
          ],
        );
      },
    );
  }

  Widget _button({
    required Function onPressed,
    required Color backgroundColor,
    Color textColor = Colors.black,
    required String buttonTitle,
    required int value,
  }) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 1.sw / 3,
              height: .10.sh,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: backgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Text(
                  buttonTitle,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  onPressed();
                },
              ),
            ),
            Positioned(
              left: (1.sw / 3 - 40) / 2,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(20)),
                alignment: Alignment.center,
                child: Text(
                  value.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
