import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[50],
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
              border: Border.all(color: Colors.black, width: 2),
            ),
            alignment: Alignment.centerRight,
            child: const Text('hello'),

            // ),Container(
            //   width: 200,
            //   height: 200,
            //   decoration: BoxDecoration(
            //     shape: BoxShape.circle,
            //     color: Colors.amber,
            //     border: Border.all(color: Colors.black, width: 2),
            //   ),
            //   alignment: Alignment.centerRight,
            //   child: const Text('hello'),
            // ),
          ),
        ));
  }
}
