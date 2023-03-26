import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class MyAdmobBanner extends StatefulWidget {
  final String bannerId;
  final String name;
  const MyAdmobBanner({
    super.key,
    required this.bannerId,
    required this.name,
  });

  @override
  State<MyAdmobBanner> createState() => _MyAdmobBannerState();
}

class _MyAdmobBannerState extends State<MyAdmobBanner> {
  late BannerAd _bannerAd;
  bool _isBannerAdReady = false;

  @override
  void initState() {
    super.initState();
    _bannerAd = BannerAd(
      adUnitId: widget.bannerId,
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          print(error);
        },
      ),
    );

    _bannerAd.load();
  }

  @override
  void dispose() {
    super.dispose();
    _bannerAd.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _bannerAd.size.width.toDouble(),
      height: _bannerAd.size.height.toDouble(),
      child: _isBannerAdReady
          ? AdWidget(ad: _bannerAd)
          : Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              alignment: Alignment.center,
              // child: CircularProgressIndicator(),
            ),
    );
  }
}
