import 'package:candy_puzzle/services/routes/app_routes.dart';
import 'package:candy_puzzle/services/routes/go_to.dart';
import 'package:candy_puzzle/services/utils/extension.dart';
import 'package:flutter/material.dart';

class PopUpService {
  static final PopUpService _instance = PopUpService._internal();
  PopUpService._internal();
  factory PopUpService() => _instance;

  Future show(Widget child, {bool barrierDismissible = true}) {
    final context = AppRoute.context;
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierColor: context.colors.primary.withOpacity(0.60),
      builder: (_) {
        return Stack(
          children: [
            if (barrierDismissible)
              GestureDetector(onTap: Go.pop, child: const SizedBox.expand()),

            Center(
              child: Material(color: Colors.transparent, child: child),
            ),
          ],
        );
      },
    );
  }
}
