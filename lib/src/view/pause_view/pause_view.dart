import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tabu/src/core/admob/my_admob_banner.dart';
import 'package:tabu/src/mobx/counter.dart';
import 'package:tabu/src/view/pause_view/widget/pause_bottom.dart';
import 'package:tabu/src/view/pause_view/widget/pause_score.dart';

class pause_view extends StatefulWidget {
  final String score;
  const pause_view({
    super.key,
    required this.score,
  });

  @override
  State<pause_view> createState() => _pause_viewState();
}

class _pause_viewState extends State<pause_view> {
  final counter = Counter();

  InterstitialAd? interstitialAd;

  // void _createInterstitialAd() {
  //   InterstitialAd.load(
  //     adUnitId: 'ca-app-pub-4086698259318942/5319883477',
  //     request: AdRequest(),
  //     adLoadCallback: InterstitialAdLoadCallback(
  //       onAdLoaded: (ad) {
  //         interstitialAd = ad;
  //         interstitialAd!.show();
  //       },
  //       onAdFailedToLoad: (LoadAdError error) {
  //         print("intersititial");
  //       },
  //     ),
  //   );
  // }

  @override
  void initState() {
    super.initState();
    // _createInterstitialAd(); //todo check for the delay
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width / 100;
    final h = size.height / 100;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        top: false,
        child: Container(
          padding: EdgeInsets.only(top: 70, bottom: 40),
          width: 100 * w,
          height: 100 * h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new AssetImage("assets/images/pausebg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyAdmobBanner(
                  bannerId: 'ca-app-pub-4086698259318942/1347960829',
                  name: 'banner3'), //! top placeholder
              PauseScore(score: widget.score),
              PauseBottom(),
            ],
          ),
        ),
      ),
    );
  }
}
