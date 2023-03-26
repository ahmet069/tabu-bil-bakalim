import 'package:flutter/material.dart';

class result_line extends StatefulWidget {
  final int result;
  final String teamName;

  const result_line({
    super.key,
    required this.result,
    required this.teamName,
  });

  @override
  State<result_line> createState() => _result_lineState();
}

class _result_lineState extends State<result_line> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width / 100;
    return Container(
        width: 80 * w,
        height: 70,
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Color(0xFF454545),
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50 * w,
                      alignment: Alignment.center,
                      child: Text(
                        widget.teamName,
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 20 * w,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFFd9d9d9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  widget.result.toString(),
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ));
  }
}
