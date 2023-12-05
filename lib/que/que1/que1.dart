import 'package:flutter/material.dart';

class Que1 extends StatelessWidget {
  const Que1({super.key});

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
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.red,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 130,
                  width: 200,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 130,
                  width: 200,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 130,
                  width: 200,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 130,
                  width: 200,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 130,
                  width: 200,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 130,
                  width: 200,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 130,
                  width: 200,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
