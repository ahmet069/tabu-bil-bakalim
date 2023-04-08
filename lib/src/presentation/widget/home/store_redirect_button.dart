import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_redirect/store_redirect.dart';

class StoreRedirectButton extends StatefulWidget {
  const StoreRedirectButton({super.key});

  @override
  State<StoreRedirectButton> createState() => _StoreRedirectButtonState();
}

class _StoreRedirectButtonState extends State<StoreRedirectButton> {
  @override
  Future<void> _redirectStore() {
    return StoreRedirect.redirect(androidAppId: 'com.enesakbal.taboo_word_maze');
  }

  Widget build(BuildContext context) {
    return SizedBox(
      width: .3.sw,
      height: .3.sw,
      child: ElevatedButton(
        onPressed: () {
          _redirectStore();
        },
        child: Text('Store'),
      ),
    );
  }
}
