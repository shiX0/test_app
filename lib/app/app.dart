import 'package:flutter/material.dart';
import 'package:test_app/screen/arithmetic_screen.dart';
import 'package:test_app/screen/hello_world_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ArithmeticScreen(),
    );
  }
}