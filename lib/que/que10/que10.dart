import 'package:flutter/material.dart';

class Que10 extends StatefulWidget {
  const Que10({super.key});

  @override
  State<Que10> createState() => _Que10State();
}

double _value = 0;
int colorind = 0;

var color = [
  Colors.black,
  Colors.purple,
  Colors.yellow,
  Colors.blue,
  Colors.red,
];

class _Que10State extends State<Que10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color[colorind],
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
      body: Column(
        children: [
          Slider(
            min: 0.0,
            max: 4.0,
            activeColor: Colors.white,
            thumbColor: Colors.white,
            overlayColor:
                MaterialStateColor.resolveWith((states) => Colors.white),
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value;
                colorind = value.toInt();
              });
            },
          )
        ],
      ),
    );
  }
}
