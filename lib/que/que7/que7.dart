import 'package:flutter/material.dart';

class Que7 extends StatefulWidget {
  const Que7({super.key});

  @override
  State<Que7> createState() => _Que7State();
}

bool checkvalue = false;

class _Que7State extends State<Que7> {
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
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            ListTile(
              leading: Checkbox(
                value: checkvalue,
                onChanged: (val) {
                  checkvalue = val!;
                  setState(() {});
                  print(checkvalue);
                },
              ),
              title: const Text('Hide Text View'),
            ),
            const SizedBox(height: 25),
            Visibility(
              visible: !checkvalue,
              child: const Text(
                'TextView',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
