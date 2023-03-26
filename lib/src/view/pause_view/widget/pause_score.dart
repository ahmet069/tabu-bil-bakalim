import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tabu/src/mobx/counter.dart';

// ignore: must_be_immutable
class PauseScore extends StatefulWidget {
  final String? score;
  const PauseScore({
    super.key,
    this.score,
  });

  @override
  State<PauseScore> createState() => _PauseScoreState();
}

class _PauseScoreState extends State<PauseScore> {
  final counter = Counter();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width / 100;

    return Container(
      child: Observer(
        builder: (_) => Text(
          widget.score.toString(),
          style: TextStyle(
            fontSize: 34 * w,
          ),
        ),
      ),
    );
  }
}
