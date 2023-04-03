import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/color/app_color.dart';

class ScoreBoard extends StatelessWidget {
  final String teamName;
  final int score;
  const ScoreBoard({super.key, required this.score, required this.teamName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .80.sw,
      height: 77,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
          color: AppColor.darkGray,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 66,
            width: .80.sw - 90,
            alignment: Alignment.center,
            child: Text(
              teamName,
              style: const TextStyle(
                fontSize: 30,
                color: AppColor.lightBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 66,
            width: 66,
            decoration: const BoxDecoration(
              color: AppColor.lightBlue,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Text(
              score.toString(),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
