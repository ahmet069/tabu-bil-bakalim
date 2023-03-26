import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tabu/src/mobx/counter.dart';
import 'package:toast/toast.dart';

class SetDuration extends StatefulWidget {
  const SetDuration({super.key});

  @override
  State<SetDuration> createState() => _SetDurationState();
}

class _SetDurationState extends State<SetDuration> {
  // final counter = Provider.of<Counter>(context);

  @override
  Widget build(BuildContext context) {
    // final store = Provider.of<Counter>(context);
    final size = MediaQuery.of(context).size;
    final w = size.width / 100;

    return Container(
      width: 100 * w,
      alignment: Alignment.center,
      child: Observer(builder: (_) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DurationBox(context, 60),
            DurationBox(context, 90),
            DurationBox(context, 120),
          ],
        );
      }),
    );
  }

  Widget DurationBox(
    BuildContext context,
    final int? new_duration,
  ) {
    final store = Provider.of<Counter>(context);
    ToastContext().init(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      width: 70,
      height: 70,
      decoration: BoxDecoration(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          backgroundColor: store.duration == new_duration
              ? Color(0xFF404040)
              : Color(0xFF6895A9),
        ),
        onPressed: () {
          store.set_duration(new_duration!);
          Toast.show('Süre ${new_duration} saniye olarak ayarlandı.',
              duration: 2);
        },
        child: Text(
          new_duration.toString(),
          style: GoogleFonts.luckiestGuy(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
