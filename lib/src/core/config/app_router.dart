import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:tabu/src/view/game_view/game_view.dart';
import 'package:tabu/src/view/home_view/home_view.dart';
import 'package:tabu/src/view/pause_view/pause_view.dart';
import 'package:tabu/src/view/result_view/result_view.dart';
import '../../view/how_to_play_view/how_to_play_view.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: home_view,
      path: '/home_view',
      initial: true,
    ),
    AutoRoute(
      page: game_view,
      path: '/game_view',
    ),
    AutoRoute(
      page: result_view,
      path: '/result_view',
    ),
    AutoRoute(
      page: HowToPlayView,
      path: '/how_to_play',
    ),
    AutoRoute(
      page: pause_view,
      path: '/pause_view',
    )
  ],
)
class AppRouter extends _$AppRouter {}
