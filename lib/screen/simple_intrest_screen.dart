import 'package:flutter/material.dart';

class SimpleIntrestScreen extends StatefulWidget {
  const SimpleIntrestScreen({super.key});

  @override
  State<SimpleIntrestScreen> createState() => _SimpleIntrestScreenState();
}

class _SimpleIntrestScreenState extends State<SimpleIntrestScreen> {
  double? principle;
  double? time;
  double? rate;

  double? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest Calculator"),
        backgroundColor: Colors.redAccent.shade100,
      ),
      body: Column(children: [
        TextField(
          onChanged: (value) {
            principle = double.tryParse(value);
          },
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: "Enter principle",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          onChanged: (value) {
            rate = double.tryParse(value);
          },
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: "Enter rate",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          onChanged: (value) {
            time = double.tryParse(value);
          },
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: "Enter time",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10,),
        const SizedBox(height: 10,),SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: (){
              setState(() {
                result=principle!*rate!*time!/100;
              });
            },
            child: const Text(
              'calculate',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Text("Output is : $result"),
      ]),
    );
  }
}
