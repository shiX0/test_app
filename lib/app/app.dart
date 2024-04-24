import 'package:flutter/material.dart';
import 'package:test_app/screen/arithmetic_screen.dart';
import 'package:test_app/screen/column_screen.dart';
import 'package:test_app/screen/dashboard_screen.dart';
import 'package:test_app/screen/hello_world_screen.dart';
import 'package:test_app/screen/layout_screen.dart';
import 'package:test_app/screen/simple_intrest_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ColumnScreen(),
    );
  }
}
