import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tabu/src/core/admob/my_admob_banner.dart';
import 'package:tabu/src/view/home_view/widget/home_button.dart';
import 'package:tabu/src/view/home_view/widget/home_image.dart';
import 'package:tabu/src/view/home_view/widget/home_title.dart';
import 'package:tabu/src/view/home_view/widget/set_duration.dart';
import '../../../main.dart';
import '../../core/config/app_router.dart';

class home_view extends StatefulWidget {
  const home_view({super.key});

  @override
  State<home_view> createState() => home_viewState();
}

BannerAd? bannerAd;
bool isloaded = false;

class home_viewState extends State<home_view> {
  void play_onPresses() async {
    await router.pushAndPopUntil(
        Game_view(
          data: 'a',
          order: 1,
        ),
        predicate: (a) => false);
  }

  void how_to_play_on_pressed() async {
    await router.push(HowToPlayRoute());
  }

  @override
  void dispose() {
    // Burada yapılacak işlemler
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width / 100;
    final h = size.height / 100;
    return Scaffold(
        body: SafeArea(
            bottom: false,
            top: true,
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        HomeImage(),
                        HomeTitle(),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    width: 100 * w,
                    height: 50 * h,
                    decoration: BoxDecoration(
                        color: Color(0xFFCDD4DB),
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Column(
                          children: [
                            MyHomeButton(
                              onPressed: play_onPresses,
                              title: 'OYNA',
                              color: Color(0xFF07638D),
                            ),
                            MyHomeButton(
                              onPressed: how_to_play_on_pressed,
                              title: 'Nasıl Oynanır ?',
                              color: Color.fromARGB(255, 7, 99, 141),
                            ),
                            SetDuration(),
                          ],
                        ),
                        //! home banner ads
                        MyAdmobBanner(
                          bannerId: 'ca-app-pub-4086698259318942/4674323128',
                          name: 'home_banner',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
