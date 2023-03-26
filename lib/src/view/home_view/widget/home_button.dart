import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomeButton extends StatefulWidget {
  final Function onPressed;
  final String title;
  final Color color;
  const MyHomeButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.color,
  });

  @override
  State<MyHomeButton> createState() => _MyHomeButtonState();
}

class _MyHomeButtonState extends State<MyHomeButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width / 100;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      alignment: Alignment.center,
      width: 70 * w,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          widget.onPressed();
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(0),
          backgroundColor: widget.color,
          shape: StadiumBorder(),
        ),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            widget.title,
            style: GoogleFonts.luckiestGuy(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
