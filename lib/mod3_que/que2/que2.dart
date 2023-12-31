// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Que2 extends StatefulWidget {
  const Que2({super.key});

  @override
  State<Que2> createState() => _Que2State();
}

class _Que2State extends State<Que2> {
  final controller = TextEditingController();
  String inputvalue = 'null';
  String inputvalue1 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Ui'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: Text('Enter Number'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                inputvalue = controller.text.toString();
                inputvalue1 = inputvalue.split('').reversed.join();
                setState(() {});
              },
              child: Text('Submit'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(inputvalue1),
          ],
        ),
      ),
    );
  }
}
