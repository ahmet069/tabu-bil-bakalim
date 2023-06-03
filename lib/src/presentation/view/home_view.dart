
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';


import '../widget/home/home_bottom.dart';
import '../widget/home/home_header.dart';
import '../widget/home/home_image.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  InterstitialAd? interstitialAd;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: null,
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          top: false,
          child: Container(
            color: Colors.white,
            width: 1.sw,
            height: 1.sh,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                HomeHeader(),
                HomeImage(),
                HomeBottom(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
