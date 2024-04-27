import 'package:flutter/material.dart';
import 'package:test_app/screen/rows_column_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RowsColumnScreen(),
    );
  }
}
