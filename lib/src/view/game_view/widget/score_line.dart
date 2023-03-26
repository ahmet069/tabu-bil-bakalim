import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tabu/src/mobx/counter.dart';

class ScoreLine extends StatefulWidget {
  const ScoreLine({super.key});

  @override
  State<ScoreLine> createState() => _ScoreLineState();
}

class _ScoreLineState extends State<ScoreLine> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width / 100;
    final store = Provider.of<Counter>(context);
    return Container(
      width: 100 * w,
      child: Observer(
          builder: (_) => Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'SKOR',
                        style: GoogleFonts.luckiestGuy(
                          fontSize: 40,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        (store.true_ - store.tabu_).toString(),
                        style: GoogleFonts.luckiestGuy(
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
    );
  }
}
