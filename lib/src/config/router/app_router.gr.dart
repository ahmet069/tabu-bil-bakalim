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
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
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
  }) : super(
          ResultRoute.name,
          path: '/ResultView',
          args: ResultRouteArgs(
            key: key,
            team: team,
          ),
        );

  static const String name = 'ResultRoute';
}

class ResultRouteArgs {
  const ResultRouteArgs({
    this.key,
    required this.team,
  });

  final Key? key;

  final String team;

  @override
  String toString() {
    return 'ResultRouteArgs{key: $key, team: $team}';
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
