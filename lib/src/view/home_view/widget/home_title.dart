import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: Text(
          'BİL BAKALIM',
          style: GoogleFonts.luckiestGuy(
            fontSize: 58,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
