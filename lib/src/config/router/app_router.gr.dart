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
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const GameView(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ResultRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ResultView(),
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
class GameRouter extends PageRouteInfo<void> {
  const GameRouter()
      : super(
          GameRouter.name,
          path: '/GameView',
        );

  static const String name = 'GameRouter';
}

/// generated route for
/// [ResultView]
class ResultRoute extends PageRouteInfo<void> {
  const ResultRoute()
      : super(
          ResultRoute.name,
          path: '/ResultView',
        );

  static const String name = 'ResultRoute';
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
