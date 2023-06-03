import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../config/color/app_color.dart';
import '../../config/router/app_router.dart';
import '../../core/components/buttons/main_button.dart';

class ConnectionErrorView extends StatefulWidget {
  const ConnectionErrorView({super.key});

  @override
  State<ConnectionErrorView> createState() => _ConnectionErrorViewState();
}

class _ConnectionErrorViewState extends State<ConnectionErrorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 1,
              ),
              Image.asset('assets/images/connection.jpg'),
              MainButton(
                buttonTitle: 'TRY AGAIN',
                backgroundColor: AppColor.darkButton,
                titleColor: Colors.white,
                onPressed: () async {
                  router.replace(const HomeRouter());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
