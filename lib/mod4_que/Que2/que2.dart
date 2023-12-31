import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class M4Que2 extends StatelessWidget {
  const M4Que2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Question 2',
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
                        onPressed: () {
                          Fluttertoast.showToast(
                            msg: "Nagative Button",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                          Navigator.pop(context);
                        },
                        child: const Text('Nagative'),
                      ),
                      TextButton(
                        onPressed: () {
                          Fluttertoast.showToast(
                            msg: "possitive Button",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                          Navigator.pop(context);
                        },
                        child: const Text('Possitive'),
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
