import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:tabu/main.dart';
import 'package:tabu/src/core/admob/my_admob_banner.dart';
import 'package:tabu/src/core/components/my_custom_alert.dart';
import 'package:tabu/src/core/config/app_router.dart';
import 'package:tabu/src/core/models/tabu_model.dart';
import 'package:tabu/src/mobx/counter.dart';
import 'package:tabu/src/view/game_view/widget/duration_bar.dart';
import 'package:tabu/src/view/game_view/widget/game_button.dart';
import 'package:tabu/src/view/game_view/widget/main_word.dart';
import 'package:tabu/src/view/game_view/widget/my_alert_dialog.dart';
import 'package:tabu/src/view/game_view/widget/score_line.dart';
import 'package:tabu/src/view/game_view/widget/tabu_word.dart';
import 'package:tabu/src/core/dummy_data/dummy_data.dart';

class game_view extends StatefulWidget {
  final String data;
  final int order;
  const game_view({
    super.key,
    required this.data,
    required this.order,
  });

  @override
  State<game_view> createState() => _game_viewState();
}

class _game_viewState extends State<game_view> {
  late final List<TabuModel> _data;

  @override
  void initState() {
    //todo code to randomly regenerate an existing data
    var random = new Random();
    _data = DummyData.getAllData().map((e) => TabuModel.fromJson(e)).toList();
    _data.shuffle(random);
    //todo code to randomly regenerate an existing data
    print(_data[1]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return WillPopScope(
        onWillPop: () async {
          final shouldPop = await showDialog<bool>(
            context: context,
            builder: (context) {
              return MyAlertDialog();
            },
          );
          return shouldPop!;
        },
        child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
          floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
          floatingActionButton: Container(
            margin: EdgeInsets.only(top: 10),
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: FloatingActionButton(
                      backgroundColor: Colors.red,
                      onPressed: () async {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return MyCustomAlert(
                              onPressed: () async {
                                counter.reset_state();
                                await router.pushAndPopUntil(Home_view(),
                                    predicate: (_) => false);
                              },
                              message: 'message',
                            );
                          },
                        );
                      },
                      child: Icon(
                        Icons.exit_to_app,
                      ),
                    ),
                  ),
                  // FloatingActionButton(
                  //   backgroundColor: Color.fromARGB(255, 92, 73, 73),
                  //   onPressed: () async {
                  //     counter.Stop_Start('STOP');
                  //   },
                  //   child: Icon(
                  //     Icons.pause,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          body: SafeArea(
            bottom: false,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      //! observer required (chacked)
                      MyAdmobBanner(
                          bannerId: 'ca-app-pub-4086698259318942/3636304121',
                          name: 'game_banner'),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: durationBar(order: widget.order),
                      ),
                    ],
                  ),
                  // ! middle area tabu card area
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFFEEEEEE),
                    ),
                    child: Observer(
                      builder: (_) => Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MainWord(
                              text: _data[counter.counter].word.toString()),
                          tabu_word(
                              text: _data[counter.counter].tabu1.toString()),
                          tabu_word(
                              text: _data[counter.counter].tabu2.toString()),
                          tabu_word(
                              text: _data[counter.counter].tabu3.toString()),
                          tabu_word(
                              text: _data[counter.counter].tabu4.toString()),
                          tabu_word(
                              text: _data[counter.counter].tabu5.toString()),
                        ],
                      ),
                    ),
                  ),
                  // ! middle area tabu card area
                  Column(
                    children: [
                      ScoreLine(),
                      SizedBox(height: 20),
                      GameButton(order: widget.order),
                    ],
                  ),
                  // score_board(),
                ],
              ),
            ),
          ),
        ));
  }
}
