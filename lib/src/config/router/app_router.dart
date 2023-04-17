import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import '../../presentation/view/game_view.dart';
import '../../presentation/view/home_view.dart';
import '../../presentation/view/how_to_play_view.dart';
import '../../presentation/view/pause_view.dart';
import '../../presentation/view/result_view.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
part 'app_router.gr.dart';

/// `AppRouter` is a class that extends `_$AppRouter`
/// and is used to generate a `Router` object
@AdaptiveAutoRouter(
  // * for names
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    CustomRoute(
      page: HomeView,
      path: '/HomeView',
      name: 'HomeRouter',
      transitionsBuilder: TransitionsBuilders.fadeIn,
      initial: true,
    ),
    CustomRoute(
      page: GameView,
      path: '/GameView',
      name: 'GameRouter',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: ResultView,
      path: '/ResultView',
      name: 'ResultRoute',
    ),
    CustomRoute(
      page: HowToPlayView,
      path: '/HowToPlayView',
      name: 'HowToPlayRoute',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: PauseView,
      path: '/PauseView',
      name: 'PauseRoute',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    )
  ],
)

/// `AppRouter` is a class that extends `_`
/// and is used to generate a `Router` object
class AppRouter extends _$AppRouter {}
