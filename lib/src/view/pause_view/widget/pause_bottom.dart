import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabu/src/core/config/app_router.dart';
import 'package:tabu/src/mobx/counter.dart';

import '../../../../main.dart';

class PauseBottom extends StatefulWidget {
  const PauseBottom({super.key});

  @override
  State<PauseBottom> createState() => PauseBottomState();
}

class PauseBottomState extends State<PauseBottom> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width / 100;
    final h = size.height / 100;
    final store = Provider.of<Counter>(context);
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              "2. TUR",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            width: 80 * w,
            height: 8 * h,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                  (states) => Color.fromRGBO(42, 139, 7, 1),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              onPressed: () async {
                store.reset_state();
                await router.pushAndPopUntil(
                    Game_view(
                      data: 'a',
                      order: 2,
                    ),
                    predicate: (a) => false);
              },
              child: Text("BAŞLA", style: TextStyle(fontSize: 30)),
            ),
          )
        ],
      ),
    );
  }
}

        // style: ButtonStyle(
        //   backgroundColor: MaterialStateColor.resolveWith(
        //       (states) => Color.fromRGBO(42, 139, 7, 1)),
        //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        //     RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(30.0),
        //     ),
        //   ),
