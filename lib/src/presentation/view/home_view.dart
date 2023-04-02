import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../main.dart';
import '../../config/color/app_color.dart';
import '../../config/router/app_router.dart';
import '../../core/components/buttons/main_button.dart';
import '../widget/home/home_image.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.white,
          width: 1.sw,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  HomeImage(),
                  Text(
                    'BİL BAKALIM',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: 1.sw,
                height: .4.sh,
                decoration: const BoxDecoration(
                  color: AppColor.lightBlue,
                  borderRadius: BorderRadiusDirectional.only(
                    topEnd: Radius.circular(40),
                    topStart: Radius.circular(40),
                  ),
                ),
                child: Column(
                  //* play button
                  children: [
                    const SizedBox(height: 30),
                    MainButton(
                      buttonTitle: 'OYNA',
                      backgroundColor: AppColor.primaryButtonColor,
                      titleColor: AppColor.primaryButtonTextColor,
                      onPressed: () async {
                        router.replace(const GameRouter());
                      },
                    ),
                    //* how to play button
                    MainButton(
                      buttonTitle: 'NASIL OYNANIR ?',
                      backgroundColor: AppColor.primaryButtonColor,
                      titleColor: AppColor.primaryButtonTextColor,
                      onPressed: () async {
                        await router.push(const HowToPlayRoute());
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
