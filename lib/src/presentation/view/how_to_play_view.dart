import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/color/app_color.dart';

class HowToPlayView extends StatelessWidget {
  const HowToPlayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nasıl Oynanır ? '),
        backgroundColor: AppColor.darkGray,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: .5.sw,
              height: .5.sw,
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'NASIL OYNANIR ?',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                ),
                Text(
                  'Oyun iki takımdan oluşur. Her takımdan bir oyuncu kendi roundunda telefonu eline alıp çıkan kelimeyi, yasaklı kelimeleri kullanmadan kendi takım arkadaşlarına anlatmaya çalışır. En yüksek skoru elde eden takım oyunu kazanır.',
                  style: TextStyle(
                    fontSize: 18,
                    wordSpacing: 2,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
