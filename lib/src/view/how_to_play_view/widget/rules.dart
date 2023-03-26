import 'package:flutter/cupertino.dart';

class Rules extends StatefulWidget {
  final String rule;
  const Rules({
    super.key,
    required this.rule,
  });

  @override
  State<Rules> createState() => _RulesState();
}

class _RulesState extends State<Rules> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        widget.rule,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
    );
  }
}
