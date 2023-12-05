import 'package:flutter/material.dart';

class Que5 extends StatefulWidget {
  const Que5({super.key});

  @override
  State<Que5> createState() => _Que5State();
}

var btnname = [
  'Black Color',
  'Purple Color',
  'Yellow Color',
  'Blue Color',
  'Red Color',
];

var color = [
  Colors.black,
  Colors.purple,
  Colors.yellow,
  Colors.blue,
  Colors.red,
];

int selectedbtn = 0;

class _Que5State extends State<Que5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color[selectedbtn],
      appBar: AppBar(
        title: const Text('Flutter Ui'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            for (int i = 0; i < 5; i++)
              ElevatedButton(
                onPressed: () {
                  selectedbtn = i;
                  setState(() {});
                },
                child: Text(btnname[i]),
              ),
          ],
        ),
      ),
    );
  }
}
