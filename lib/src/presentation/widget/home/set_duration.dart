import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/color/app_color.dart';

class SetDuration extends StatelessWidget {
  const SetDuration({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _setButton(duration: 60),
          _setButton(duration: 90),
          _setButton(duration: 120),
        ],
      ),
    );
  }

  Widget _setButton({required int duration}) {
    const Color bacgroundColor = AppColor.secondaryButtonColor;
    return Container(
      width: 70,
      height: 70,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: bacgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Container(
          width: 70,
          height: 70,
          alignment: Alignment.center,
          child: Text(
            duration.toString(),
            style: GoogleFonts.luckiestGuy(
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
