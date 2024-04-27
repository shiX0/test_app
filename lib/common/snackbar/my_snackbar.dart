import 'package:flutter/material.dart';

showMySnackBar({
  required String message,
  required BuildContext context,
  Color? color,
  required bool isred,
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    duration: const Duration(seconds: 1),
    backgroundColor: isred ? Colors.red : Colors.green,
    behavior: SnackBarBehavior.floating,
  ));
}
