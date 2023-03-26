import 'package:flutter/material.dart';

class MyCustomAlert extends StatefulWidget {
  final Function onPressed;
  final String message;
  const MyCustomAlert({
    super.key,
    required this.onPressed,
    required this.message,
  });

  @override
  State<MyCustomAlert> createState() => _MyCustomAlertState();
}

class _MyCustomAlertState extends State<MyCustomAlert> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width / 100;
    return AlertDialog(
      icon: Icon(
        Icons.sentiment_dissatisfied,
        color: Colors.red,
        size: 50,
      ),
      backgroundColor: Color.fromARGB(255, 52, 64, 70),
      title: const Text(
        'Ana sayfaya dönmek istediğinize emin misiniz ?',
        style: TextStyle(color: Colors.white),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 40 * w,
              child: ElevatedButton(
                onPressed: () async {
                  Navigator.pop(context, false);
                  await widget.onPressed();
                },
                child: Text('Evet'),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: const Text('Hayır'),
            ),
          ],
        ),
      ],
    );
  }
}
