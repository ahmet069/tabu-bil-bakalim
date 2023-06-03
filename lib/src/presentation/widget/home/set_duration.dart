import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/color/app_color.dart';
import '../../bloc/constant/constant_bloc.dart';

class SetDuration extends StatelessWidget {
  const SetDuration({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConstantBloc, ConstantState>(
      builder: (context, state) {
        if (state is GameInitial) {
          return Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              width: 1.sw,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _setButton(duration: 75, state: state, context: context),
                  _setButton(duration: 90, state: state, context: context),
                  _setButton(duration: 120, state: state, context: context),
                ],
              ),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }

  Widget _setButton(
      {required int duration, required GameInitial state, required BuildContext context}) {
    final Color bacgroundColor =
        state.duration == duration ? AppColor.darkButton : AppColor.secondaryButtonColor;
    return Container(
      width: 70,
      height: 70,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: ElevatedButton(
        onPressed: () {
          context.read<ConstantBloc>().add(ChangeDuration(newDuration: duration));
        },
        onLongPress: () {
          context.read<ConstantBloc>().add(const ChangeDuration(newDuration: 4));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: bacgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Container(
          width: 70,
          height: 70,
          alignment: Alignment.center,
          child: Text(
            duration.toString(),
            style: GoogleFonts.luckiestGuy(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
