import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../config/color/app_color.dart';
import '../../../core/components/admob/admob_banner.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: .14.sh,
      decoration: BoxDecoration(
        color: AppColor.lightGrayBlue,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.elliptical(.70.sw, .07.sw),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const MyAdmobBanner(
            bannerId: 'ca-app-pub-4086698259318942/3789112672',
            adSize: AdSize.banner,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'BİL BAKALIM',
              style: GoogleFonts.luckiestGuy(fontSize: 24.sp),
            ),
          ),
        ],
      ),
    );
  }
}
