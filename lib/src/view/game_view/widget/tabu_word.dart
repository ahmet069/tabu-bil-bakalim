import 'package:flutter/material.dart';

class tabu_word extends StatelessWidget {
  final String text;
  const tabu_word({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final h = size.height / 100;
    return Container(
      height: 8 * h,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 28,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
