import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../main.dart';
import '../../config/color/app_color.dart';
import '../../config/router/app_router.dart';
import '../../core/components/buttons/main_button.dart';
import '../widget/home/home_image.dart';
import '../widget/home/store_redirect_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final int currentDuration = 60;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: null,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
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
                SizedBox(
                  height: .5.sh,
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
                  height: .3.sh,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: AppColor.lightBlue,
                    borderRadius: BorderRadiusDirectional.only(
                      topEnd: Radius.circular(40),
                      topStart: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    //* play button
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
                          //* how to play button
                          MainButton(
                            buttonTitle: 'NASIL OYNANIR ?',
                            backgroundColor: AppColor.primaryButtonColor,
                            titleColor: AppColor.primaryButtonTextColor,
                            onPressed: () async {
                              await router.push(const HowToPlayRoute());
                            },
                          ),
                          //TODO: play butonu düzenle
                          //  StoreRedirectButton(),
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
