import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainWord extends StatefulWidget {
  final String text;
  const MainWord({super.key, required this.text});

  @override
  State<MainWord> createState() => _MainWordState();
}

class _MainWordState extends State<MainWord> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(30)),
      child: Text(
        widget.text,
        style: GoogleFonts.inter(
          fontSize: 36,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
