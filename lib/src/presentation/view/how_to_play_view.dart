import 'package:flutter/material.dart';

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
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          'Oyun iki takımdan oluşur. Her takımdan bir oyuncu kendi roundunda telefonu eline alıp çıkan kelimeyi, yasaklı kelimeleri kullanmadan kendi takım arkadaşlarına anlatmaya çalışır. En yüksek skoru elde eden takım oyunu kazanır.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
