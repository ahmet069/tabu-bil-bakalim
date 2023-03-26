import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tabu/src/core/config/app_router.dart';
import 'package:tabu/src/mobx/counter.dart';
import '../../../../main.dart';

class durationBar extends StatefulWidget {
  final int order;
  const durationBar({
    super.key,
    required this.order,
  });

  @override
  State<durationBar> createState() => _durationBarState();
}

class _durationBarState extends State<durationBar> {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<Counter>(context);
    void _duration_end() async {
      if (widget.order == 1) {
        await router.pushAndPopUntil(
            Pause_view(score: (store.true_ - store.tabu_).toString()
                // order: widget.order,
                ),
            predicate: (a) => false);
      } else if (widget.order == 2) {
        await router.pushAndPopUntil(Result_view(), predicate: (a) => false);
      }
    }

    return Column(
      children: [
        TimerCountdown(
          format: CountDownTimerFormat.secondsOnly,
          endTime: DateTime.now().add(Duration(seconds: store.duration)),
          onEnd: () {
            _duration_end();
          },
          timeTextStyle: GoogleFonts.luckiestGuy(
            fontSize: 34,
          ),
          descriptionTextStyle: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
