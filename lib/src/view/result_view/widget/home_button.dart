import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabu/src/core/config/app_router.dart';
import 'package:tabu/src/mobx/counter.dart';

import '../../../../main.dart';

class HomeButton extends StatefulWidget {
  const HomeButton({
    super.key,
  });

  @override
  State<HomeButton> createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width / 100;
    final h = size.height / 100;
    final store = Provider.of<Counter>(context);
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: 80 * w,
      height: 7 * h,
      child: ElevatedButton(
        onPressed: () async {
          await router.pushAndPopUntil(Home_view(), predicate: (a) => false);
          store.reset_state();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith(
              (states) => Color.fromRGBO(62, 199, 13, 1)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          )),
        ),
        child: Text(
          "Ana Sayfa",
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }
}
