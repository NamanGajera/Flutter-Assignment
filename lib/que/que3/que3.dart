import 'package:flutter/material.dart';

class Que3 extends StatefulWidget {
  const Que3({super.key});

  @override
  State<Que3> createState() => _Que3State();
}

class _Que3State extends State<Que3> {
  final num1contro = TextEditingController();
  final num2contro = TextEditingController();
  int n1 = 0;
  int n2 = 0;
  List outnum = [];
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: num1contro,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: const Text('Enter Number 1'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: num2contro,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: const Text('Enter Number 2'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
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
                n1 = int.parse(num1contro.text.toString());
                n2 = int.parse(num2contro.text.toString());

                int j = n1 - n2;
                for (int i = 0; i < j; i++) {
                  outnum[i] = n1;
                  n1--;
                  print(n1);
                }

                setState(() {});
              },
              child: Text('Submit'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text('Number between input value is'),
            for (int i = 0; i < outnum.length; i++) Text(outnum[i]),

            // Text(n2.toString()),
          ],
        ),
      ),
    );
  }
}
