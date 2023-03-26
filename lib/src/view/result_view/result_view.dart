import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:tabu/src/mobx/counter.dart';
import 'package:tabu/src/view/result_view/widget/home_button.dart';
import 'package:tabu/src/view/result_view/widget/result_image.dart';
import 'package:tabu/src/view/result_view/widget/result_line.dart';

import '../../core/admob/my_admob_banner.dart';

class result_view extends StatefulWidget {
  const result_view({super.key});

  @override
  State<result_view> createState() => _result_viewState();
}

class _result_viewState extends State<result_view> {
  InterstitialAd? interstitialAd;

  void _createInterstitialAd() {
    InterstitialAd.load(
      adUnitId: 'ca-app-pub-4086698259318942/5319883477',
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          interstitialAd = ad;
          interstitialAd!.show();
        },
        onAdFailedToLoad: (LoadAdError error) {
          print("intersititial");
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _createInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 205, 212, 219),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  MyAdmobBanner(
                    bannerId: 'ca-app-pub-4086698259318942/1081487073',
                    name: 'banner4',
                  ),
                  ResultImage(),
                  result_line(
                    result: counter.score1,
                    teamName: '1. Takım',
                  ),
                  result_line(
                    result: counter.score2,
                    teamName: '2. Takım',
                  ),
                  // WinnerBox(
                  //   team_name: '1. Takım',
                  // )
                ],
              ),
              Column(
                children: [
                  HomeButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
