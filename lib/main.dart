import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'src/config/router/app_router.dart';
import 'src/injector.dart' as di;
import 'src/presentation/bloc/constant/constant_bloc.dart';
import 'src/presentation/bloc/game/game_bloc.dart';

// ignore: unused_element

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await _initalize();
  runApp(const MyApp());
}

Future<void> _initalize() async {
  await di.init();
}

final router = AppRouter();

//! my-app render side ****************************************************************
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.injector<GameBloc>()),
        BlocProvider(create: (_) => di.injector<ConstantBloc>()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        builder: (context, _) {
          // ignore: discarded_futures
          SystemChrome.setEnabledSystemUIMode(
            SystemUiMode.manual,
            overlays: [],
          );

          return MaterialApp.router(
            routerDelegate: router.delegate(),
            routeInformationParser: router.defaultRouteParser(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
//! my-app render side ****************************************************************
