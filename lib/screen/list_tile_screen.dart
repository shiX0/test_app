import 'package:flutter/material.dart';
import 'package:test_app/common/widgets/custom_list_tile.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListTile'),
          elevation: 5,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < 10; i++) ...{
                CustomListTile(index: i),
                const SizedBox(
                  height: 5,
                )
              }
            ],
          ),
        ));
  }
}
