import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../main.dart';
import '../../../config/color/app_color.dart';
import '../../../config/router/app_router.dart';
import '../../../core/components/buttons/main_button.dart';
import 'set_duration.dart';

class HomeBottom extends StatelessWidget {
  const HomeBottom({super.key});
  final int currentDuration = 60;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: .38.sh,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColor.lightGrayBlue,
        borderRadius: BorderRadiusDirectional.vertical(top: Radius.elliptical(.70.sw, .07.sw)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              MainButton(
                buttonTitle: 'OYNA',
                backgroundColor: AppColor.primaryButtonColor,
                titleColor: AppColor.primaryButtonTextColor,
                onPressed: () async {
                  router.replace(GameRouter(
                    team: 'team1',
                    newDuration: currentDuration,
                  ));
                },
              ),
              MainButton(
                buttonTitle: 'NASIL OYNANIR ?',
                backgroundColor: AppColor.primaryButtonColor,
                titleColor: AppColor.primaryButtonTextColor,
                onPressed: () async {
                  await router.push(const HowToPlayRoute());
                },
              ),
              const SetDuration(),
            ],
          ),
        ],
      ),
    );
  }
}
