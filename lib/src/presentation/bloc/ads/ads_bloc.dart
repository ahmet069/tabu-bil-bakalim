import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

part 'ads_event.dart';
part 'ads_state.dart';

class AdsBloc extends Bloc<AdsEvent, AdsState> {
  late BannerAd homeBanner;
  late BannerAd gameBanner;
  late BannerAd resultBanner;
  late BannerAd pauseBanner;
  String homeBannerId = 'ca-app-pub-4086698259318942/3789112672';
  String gameBannerId = 'ca-app-pub-4086698259318942/4893777958';
  String resultBannerId = 'ca-app-pub-4086698259318942/2076042929';
  String pauseBannerId = 'ca-app-pub-4086698259318942/4702206267';

  BannerAd LoadHomeBanner() {
    homeBanner = BannerAd(
      size: AdSize.banner,
      adUnitId: homeBannerId,
      listener: BannerAdListener(),
      request: const AdRequest(),
    );

    return homeBanner;
  }

  AdsBloc() : super(AdsInitial()) {
    on<LoadAllBanners>(
      (event, emit) {
        try {
          homeBanner = BannerAd(
            size: AdSize.banner,
            adUnitId: homeBannerId,
            listener: BannerAdListener(
              onAdLoaded: (ad) {
                print('home banner loaded');
              },
              onAdFailedToLoad: (ad, error) async {
                ad.dispose();
                print(error);
              },
            ),
            request: const AdRequest(),
          );
        } catch (_) {
          rethrow;
        }
      },
    );
  }
}

    // _bannerAd = BannerAd(
    //   adUnitId: widget.bannerId,
    //   size: AdSize.banner,
    //   request: AdRequest(),
    //   listener: BannerAdListener(
    //     onAdLoaded: (_) {
    //       setState(() {
    //         _isBannerAdReady = true;
    //       });
    //     },
    //     onAdFailedToLoad: (ad, error) {
    //       ad.dispose();
    //       print(error);
    //     },
    //   ),
    // );

    // _bannerAd.load();
