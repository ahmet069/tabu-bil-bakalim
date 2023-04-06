// ignore_for_file: avoid_dynamic_calls

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.buttonTitle,
    this.onPressed,
    required this.backgroundColor,
    required this.titleColor,
  });
  final String buttonTitle;
  final Function? onPressed;
  final Color backgroundColor;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .74.sw,
      height: 70,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
        ),
        onPressed: () async {
          await onPressed!();
        },
        child: Text(
          buttonTitle,
          textAlign: TextAlign.center,
          style: GoogleFonts.luckiestGuy(
              color: titleColor,
              fontSize: 28,
              fontWeight: FontWeight.w800,
              letterSpacing: 2),
        ),
      ),
    );
  }
}
