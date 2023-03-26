import 'package:flutter/material.dart';
import 'package:tabu/main.dart';
import 'package:tabu/src/core/config/app_router.dart';
import 'package:tabu/src/view/how_to_play_view/widget/rules.dart';

class HowToPlayView extends StatefulWidget {
  const HowToPlayView({super.key});

  @override
  State<HowToPlayView> createState() => _HowToPlayViewState();
}

String text =
    'Oyun iki takım halinde oynanır. 2-4-6 kişilik bir oyundur. Oyunun kuralları';

class _HowToPlayViewState extends State<HowToPlayView> {
  void _home_btn_onPressed() async {
    await router.pushAndPopUntil(Home_view(), predicate: (a) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _home_btn_onPressed,
        splashColor: Colors.blueGrey,
        child: Icon(Icons.home),
        backgroundColor: Color(0xFF07638D),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Text(
                      'Oyun Kuralları',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Rules(
                      rule:
                          '1. Her iki takımın da süresi 120 saniyedir. Süre bitmeden çıkamazsınız.'),
                  Rules(rule: '2. Her iki takımın da 4 pas hakkı bulunur. '),
                  Rules(
                      rule:
                          '3. Süre bitmeden oyundan çıkamazsınız veya süreyi durduramazsınız'),
                  Rules(
                      rule:
                          '4. Oyun bitiminde en yüksek skoru elde eden takım oyunun kazananı olur.'),
                  // Image.asset('assets/images/rules.jpg'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
