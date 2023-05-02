import 'package:flutter/material.dart';

class YesNoDialog extends StatelessWidget {
  final String content;
  final Color backgroundColor;
  final String title;

  const YesNoDialog({
    super.key,
    required this.title,
    required this.backgroundColor,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Column(children: [
        Text(title),
        Text(content),
      ]),
      onWillPop: () async => true,
    );
  }
}
