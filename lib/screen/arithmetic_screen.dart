import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  int? first;
  int? second;
  int? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade50,
      appBar: AppBar(
        title: const Text("Arithmetic"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value){
                first=int.tryParse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter a number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10,),
            TextField(
              onChanged: (value){
                second=int.tryParse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter a number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10,),
            // Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    result=first!+second!;
                  });
                },
                child: const Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    result=first!-second!;
                  });
                },
                child: const Text(
                  'subtract',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Text("Output is : $result"),
          ],
        ),
      )
    );
  }
}
