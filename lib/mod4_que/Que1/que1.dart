import 'package:flutter/material.dart';

class M4Que1 extends StatelessWidget {
  const M4Que1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Question 1',
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(22),
          width: double.infinity,
          height: 90,
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Colors.white,
                    title: const Text('Alert Dialog'),
                    content: const Text('This is a Alert Dialog Example'),
                    actions: [
                      TextButton(
                        onPressed: () {},
                        child: const Text('Cancle'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Ok'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('Show Alert Box'),
          ),
        ),
      ),
    );
  }
}
