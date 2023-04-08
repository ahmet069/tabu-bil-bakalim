import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../main.dart';
import '../../../config/router/app_router.dart';

class CountDown extends StatefulWidget {
  final String team;
  const CountDown({
    super.key,
    required this.team,
  });

  @override
  State<CountDown> createState() => _CountDownState();
}

class _CountDownState extends State<CountDown> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: TimerCountdown(
        format: CountDownTimerFormat.secondsOnly,
        timeTextStyle: GoogleFonts.luckiestGuy(
          fontSize: 34,
        ),
        descriptionTextStyle: const TextStyle(
          fontSize: 0,
        ),
        endTime: DateTime.now().add(
          const Duration(
            //* duration *//
            seconds: 76,
            // seconds: 2,
          ),
        ),
        onEnd: () async {
          await router.replace(ResultRoute(
            team: widget.team,
          ));
        },
      ),
    );
  }
}
