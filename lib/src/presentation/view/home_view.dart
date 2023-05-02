import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../main.dart';
import '../../config/color/app_color.dart';
import '../../config/router/app_router.dart';
import '../../core/components/admob/admob_banner.dart';
import '../../core/components/buttons/main_button.dart';
import '../bloc/constant/constant_bloc.dart';
import '../widget/home/home_image.dart';
import '../widget/home/set_duration.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    context.read<ConstantBloc>().add(const GameInit());
    super.initState();
  }

  final int currentDuration = 60;
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
              children: [
                const MyAdmobBanner(
                  bannerId: 'ca-app-pub-4086698259318942/3789112672',
                  adSize: AdSize.fullBanner,
                ),
                SizedBox(
                  child: Column(
                    children: [
                      const HomeImage(),
                      Text(
                        'BİL BAKALIM',
                        style: GoogleFonts.luckiestGuy(fontWeight: FontWeight.w100, fontSize: 50),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1.sw,
                  height: .38.sh,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: AppColor.lightBlue,
                    borderRadius:
                        BorderRadiusDirectional.vertical(top: Radius.elliptical(1200, 100)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          MainButton(
                            buttonTitle: 'OYNA',
                            backgroundColor: AppColor.primaryButtonColor,
                            titleColor: AppColor.primaryButtonTextColor,
                            onPressed: () async {
                              router.replace(GameRouter(
                                team: 'team1',
                                newDuration: currentDuration,
                              ));
                            },
                          ),
                          MainButton(
                            buttonTitle: 'NASIL OYNANIR ?',
                            backgroundColor: AppColor.primaryButtonColor,
                            titleColor: AppColor.primaryButtonTextColor,
                            onPressed: () async {
                              await router.push(const HowToPlayRoute());
                            },
                          ),
                          const SetDuration(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
