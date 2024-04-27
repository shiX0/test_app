import 'package:flutter/material.dart';

class RowsColumnScreen extends StatelessWidget {
  const RowsColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ROws and COlumns'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    height: 100,
                    child: Text('Container 1'),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    height: 100,
                    child: Text('Container 1'),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    height: 100,
                    child: Text('Container 1'),
                  ),
                ),
                Column(children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      height: 400,
                      child: Text('Container 1'),
                    ),
                  ),
                ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
