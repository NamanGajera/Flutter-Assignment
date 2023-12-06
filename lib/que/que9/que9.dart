import 'package:flutter/material.dart';

class Que9 extends StatefulWidget {
  const Que9({super.key});

  @override
  State<Que9> createState() => _Que9State();
}

int radiogroupval = 0;
var colorname = [
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

class _Que9State extends State<Que9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color[radiogroupval],
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
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            for (int i = 0; i < 5; i++)
              ListTile(
                leading: Radio(
                  fillColor:
                      MaterialStateColor.resolveWith((states) => Colors.white),
                  value: i,
                  groupValue: radiogroupval,
                  onChanged: (val) {
                    radiogroupval = val!;
                    setState(() {});
                  },
                ),
                title: Text(
                  colorname[i],
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
