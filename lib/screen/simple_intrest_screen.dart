import 'package:flutter/material.dart';
import 'package:test_app/model/simple_intrest_model.dart';

class SimpleIntrestScreen extends StatefulWidget {
  const SimpleIntrestScreen({super.key});

  @override
  State<SimpleIntrestScreen> createState() => _SimpleIntrestScreenState();
}

class _SimpleIntrestScreenState extends State<SimpleIntrestScreen> {
  double? principle;
  double? time;
  double? rate;
  late SimpleIntrestModel sim;
  double? result;
  final myKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest Calculator"),
        backgroundColor: Colors.redAccent.shade100,
      ),
      body: Form(
        key: myKey,
        child: Column(children: [
          const SizedBox(height: 10,),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter a Number";
              } else {
                return null;
              }
            },
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
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter a Number";
              } else {
                return null;
              }
            },
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
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter a Number";
              } else {
                return null;
              }
            },
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
                if(myKey.currentState!.validate()){
                  setState(() {
                    sim=SimpleIntrestModel(principle: principle, rate: rate, time: time);
                    result = sim.simin();
                  });
                }
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
      ),
    );
  }
}
