import 'package:flutter/material.dart';

class WinnerBox extends StatefulWidget {
  final String team_name;
  const WinnerBox({
    super.key,
    required this.team_name,
  });

  @override
  State<WinnerBox> createState() => _WinnerBoxState();
}

class _WinnerBoxState extends State<WinnerBox> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width / 100;
    return Container(
      padding: EdgeInsets.all(10),
      width: 80 * w,
      decoration: BoxDecoration(
        color: Color(0xFF454545),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text("1. Takım"),
          Container(
            child: Text(""),
          )
        ],
      ),
    );
  }
}
