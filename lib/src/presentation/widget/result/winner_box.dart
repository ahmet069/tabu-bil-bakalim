import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/color/app_color.dart';

class WinnerBox extends StatelessWidget {
  final String teamName;
  const WinnerBox({super.key, required this.teamName});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        height: 60,
        width: .80.sw,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            color: AppColor.darkGray,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Text(
          'Kazanan: $teamName',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
