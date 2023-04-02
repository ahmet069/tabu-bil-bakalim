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
    return Row(
      children: [
        ButtonWidget(
          onPressed: () {
            context.read<GameBloc>().add(const TabuTabu());
          },
          backgroundColor: AppColor.buttonRed,
          buttonTitle: 'TABU',
          textColor: Colors.white,
        ),
        ButtonWidget(
          onPressed: () {
            context.read<GameBloc>().add(const SkipTabu());
          },
          backgroundColor: AppColor.buttonYellow,
          buttonTitle: 'PAS',
        ),
        ButtonWidget(
          onPressed: () {
            context.read<GameBloc>().add(const SkipTabu());
          },
          backgroundColor: AppColor.buttonGreen,
          buttonTitle: 'DOĞRU',
        ),
      ],
    );
  }

  Widget ButtonWidget({
    required Function onPressed,
    required Color backgroundColor,
    Color textColor = Colors.black,
    required String buttonTitle,
  }) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return SizedBox(
          width: .3333.sw,
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
        );
      },
    );
  }
}
