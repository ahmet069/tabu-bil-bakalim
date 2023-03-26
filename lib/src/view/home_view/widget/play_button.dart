import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tabu/src/core/config/app_router.dart';

import '../../../../main.dart';

class PlayButton extends StatefulWidget {
  const PlayButton({super.key});

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width / 100;
    final h = size.height / 100;
    return Container(
      width: 50 * w,
      height: 6 * h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
      child: ElevatedButton(
        onPressed: () async {
          await router.pushAndPopUntil(
              Game_view(
                data: 'a',
                order: 1,
              ),
              predicate: (a) => false);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith(
              (states) => Color.fromRGBO(42, 139, 7, 1)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        child: Text(
          "OYNA",
          style: GoogleFonts.julee(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
