// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    GameRouter.name: (routeData) {
      final args = routeData.argsAs<GameRouterArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: GameView(
          key: args.key,
          team: args.team,
          newDuration: args.newDuration,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ResultRoute.name: (routeData) {
      final args = routeData.argsAs<ResultRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: ResultView(
          key: args.key,
          team: args.team,
          interstitialAd: args.interstitialAd,
        ),
        opaque: true,
        barrierDismissible: false,
      );
    },
    HowToPlayRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const HowToPlayView(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PauseRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const PauseView(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ConnectionErrorRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ConnectionErrorView(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/HomeView',
          fullMatch: true,
        ),
        RouteConfig(
          HomeRouter.name,
          path: '/HomeView',
        ),
        RouteConfig(
          GameRouter.name,
          path: '/GameView',
        ),
        RouteConfig(
          ResultRoute.name,
          path: '/ResultView',
        ),
        RouteConfig(
          HowToPlayRoute.name,
          path: '/HowToPlayView',
        ),
        RouteConfig(
          PauseRoute.name,
          path: '/PauseView',
        ),
        RouteConfig(
          ConnectionErrorRouter.name,
          path: '/ConnectionErrorView',
        ),
      ];
}

/// generated route for
/// [HomeView]
class HomeRouter extends PageRouteInfo<void> {
  const HomeRouter()
      : super(
          HomeRouter.name,
          path: '/HomeView',
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [GameView]
class GameRouter extends PageRouteInfo<GameRouterArgs> {
  GameRouter({
    Key? key,
    required String team,
    required int newDuration,
  }) : super(
          GameRouter.name,
          path: '/GameView',
          args: GameRouterArgs(
            key: key,
            team: team,
            newDuration: newDuration,
          ),
        );

  static const String name = 'GameRouter';
}

class GameRouterArgs {
  const GameRouterArgs({
    this.key,
    required this.team,
    required this.newDuration,
  });

  final Key? key;

  final String team;

  final int newDuration;

  @override
  String toString() {
    return 'GameRouterArgs{key: $key, team: $team, newDuration: $newDuration}';
  }
}

/// generated route for
/// [ResultView]
class ResultRoute extends PageRouteInfo<ResultRouteArgs> {
  ResultRoute({
    Key? key,
    required String team,
    InterstitialAd? interstitialAd,
  }) : super(
          ResultRoute.name,
          path: '/ResultView',
          args: ResultRouteArgs(
            key: key,
            team: team,
            interstitialAd: interstitialAd,
          ),
        );

  static const String name = 'ResultRoute';
}

class ResultRouteArgs {
  const ResultRouteArgs({
    this.key,
    required this.team,
    this.interstitialAd,
  });

  final Key? key;

  final String team;

  final InterstitialAd? interstitialAd;

  @override
  String toString() {
    return 'ResultRouteArgs{key: $key, team: $team, interstitialAd: $interstitialAd}';
  }
}

/// generated route for
/// [HowToPlayView]
class HowToPlayRoute extends PageRouteInfo<void> {
  const HowToPlayRoute()
      : super(
          HowToPlayRoute.name,
          path: '/HowToPlayView',
        );

  static const String name = 'HowToPlayRoute';
}

/// generated route for
/// [PauseView]
class PauseRoute extends PageRouteInfo<void> {
  const PauseRoute()
      : super(
          PauseRoute.name,
          path: '/PauseView',
        );

  static const String name = 'PauseRoute';
}

/// generated route for
/// [ConnectionErrorView]
class ConnectionErrorRouter extends PageRouteInfo<void> {
  const ConnectionErrorRouter()
      : super(
          ConnectionErrorRouter.name,
          path: '/ConnectionErrorView',
        );

  static const String name = 'ConnectionErrorRouter';
}
