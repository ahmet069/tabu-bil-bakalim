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
    Home_view.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const home_view(),
      );
    },
    Game_view.name: (routeData) {
      final args = routeData.argsAs<Game_viewArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: game_view(
          key: args.key,
          data: args.data,
          order: args.order,
        ),
      );
    },
    Result_view.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const result_view(),
      );
    },
    HowToPlayRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const HowToPlayView(),
      );
    },
    Pause_view.name: (routeData) {
      final args = routeData.argsAs<Pause_viewArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: pause_view(
          key: args.key,
          score: args.score,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/home_view',
          fullMatch: true,
        ),
        RouteConfig(
          Home_view.name,
          path: '/home_view',
        ),
        RouteConfig(
          Game_view.name,
          path: '/game_view',
        ),
        RouteConfig(
          Result_view.name,
          path: '/result_view',
        ),
        RouteConfig(
          HowToPlayRoute.name,
          path: '/how_to_play',
        ),
        RouteConfig(
          Pause_view.name,
          path: '/pause_view',
        ),
      ];
}

/// generated route for
/// [home_view]
class Home_view extends PageRouteInfo<void> {
  const Home_view()
      : super(
          Home_view.name,
          path: '/home_view',
        );

  static const String name = 'Home_view';
}

/// generated route for
/// [game_view]
class Game_view extends PageRouteInfo<Game_viewArgs> {
  Game_view({
    Key? key,
    required String data,
    required int order,
  }) : super(
          Game_view.name,
          path: '/game_view',
          args: Game_viewArgs(
            key: key,
            data: data,
            order: order,
          ),
        );

  static const String name = 'Game_view';
}

class Game_viewArgs {
  const Game_viewArgs({
    this.key,
    required this.data,
    required this.order,
  });

  final Key? key;

  final String data;

  final int order;

  @override
  String toString() {
    return 'Game_viewArgs{key: $key, data: $data, order: $order}';
  }
}

/// generated route for
/// [result_view]
class Result_view extends PageRouteInfo<void> {
  const Result_view()
      : super(
          Result_view.name,
          path: '/result_view',
        );

  static const String name = 'Result_view';
}

/// generated route for
/// [HowToPlayView]
class HowToPlayRoute extends PageRouteInfo<void> {
  const HowToPlayRoute()
      : super(
          HowToPlayRoute.name,
          path: '/how_to_play',
        );

  static const String name = 'HowToPlayRoute';
}

/// generated route for
/// [pause_view]
class Pause_view extends PageRouteInfo<Pause_viewArgs> {
  Pause_view({
    Key? key,
    required String score,
  }) : super(
          Pause_view.name,
          path: '/pause_view',
          args: Pause_viewArgs(
            key: key,
            score: score,
          ),
        );

  static const String name = 'Pause_view';
}

class Pause_viewArgs {
  const Pause_viewArgs({
    this.key,
    required this.score,
  });

  final Key? key;

  final String score;

  @override
  String toString() {
    return 'Pause_viewArgs{key: $key, score: $score}';
  }
}
