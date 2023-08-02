import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';
import '../../../../main.dart';
import '../../../config/router/app_router.dart';
import '../../bloc/constant/constant_bloc.dart';

class CountDown extends StatefulWidget {
  final String team;
  const CountDown({
    super.key,
    required this.team,
  });

  @override
  State<CountDown> createState() => _CountDownState();
}

class _CountDownState extends State<CountDown> {
  @override
  void initState() {
    if (widget.team == 'team2') {
      _createInterstitialAd();
    }
    super.initState();
  }

// ca-app-pub-4086698259318942/9252739061
  InterstitialAd? interstitialAd;
  void _createInterstitialAd() {
    InterstitialAd.load(
      adUnitId: kDebugMode
          ? 'ca-app-pub-3940256099942544/8691691433' // test id
          : 'ca-app-pub-4086698259318942/9252739061', // release id
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          interstitialAd = ad;
          if (kDebugMode) {
            print('intersititial fail');
          }
          interstitialAd;
        },
        onAdFailedToLoad: (LoadAdError error) {
          if (kDebugMode) {
            print('intersititial succes');
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: TimerCountdown(
        format: CountDownTimerFormat.secondsOnly,
        colonsTextStyle: const TextStyle(color: Colors.black),
        timeTextStyle: GoogleFonts.luckiestGuy(
          fontSize: 34,
        ),
        descriptionTextStyle: const TextStyle(
          fontSize: 0,
        ),
        endTime: DateTime.now().add(
          const Duration(
            //* duration *//
            seconds: 6,
            // seconds: 2,
          ),
        ),
        onEnd: () async {
          if (widget.team == 'team1') {
            await router.replace(const PauseRoute());
          } else if (widget.team == 'team2') {
            interstitialAd?.show();
            await router.replace(
              ResultRoute(
                team: widget.team,
                interstitialAd: widget.team == 'team2' ? interstitialAd : null,
              ),
            );
          }
        },
      ),
    );
  }
}


// ca-app-pub-3940256099942544/8691691433
// interstitial test id