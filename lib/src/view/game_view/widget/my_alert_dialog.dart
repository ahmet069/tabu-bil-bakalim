import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../../../core/config/app_router.dart';

class MyAlertDialog extends StatefulWidget {
  const MyAlertDialog({super.key});

  @override
  State<MyAlertDialog> createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
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
                onPressed: () {
                  Navigator.pop(context, false);
                  router.pushAndPopUntil(Home_view(), predicate: (a) => false);
                },
                child: Text('Evet'),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: const Text('hayır'),
            ),
          ],
        ),
      ],
    );
  }
}
