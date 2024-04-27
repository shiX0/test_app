import 'package:flutter/material.dart';
import 'package:test_app/common/snackbar/my_snackbar.dart';

class FlixibleExpandedScreen extends StatelessWidget {
  const FlixibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screeenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                alignment: Alignment.center,
                color: Colors.green,
                height: 600,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showMySnackBar(
                        message: 'hello', context: context, isred: false);
                  },
                  child: const Text('okay'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                height: 200,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showMySnackBar(
                        message: 'gaudy', context: context, isred: true);
                  },
                  child: const Text('hello'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
