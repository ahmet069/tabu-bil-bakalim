import 'package:flutter/material.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width / 100;
    return Container(
      width: 80 * w,
      child: Image.asset('assets/images/image1.png'),
    );
  }
}
