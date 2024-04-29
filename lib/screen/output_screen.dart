import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final int index;

  const OutputScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Output screen'),
      ),
      body: Center(child: Text('$index')),
    );
  }
}
