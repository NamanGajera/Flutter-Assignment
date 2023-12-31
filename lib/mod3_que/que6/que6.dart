import 'package:flutter/material.dart';

class Que6 extends StatefulWidget {
  const Que6({super.key});

  @override
  State<Que6> createState() => _Que6State();
}

double myfontsize = 8.0;

class _Que6State extends State<Que6> {
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
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Text(
              'Change Size',
              style: TextStyle(fontSize: myfontsize),
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      if (myfontsize < 40.0) {
                        myfontsize = myfontsize + 2.0;
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Can not increase more size',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        );
                      }
                      setState(() {});
                    },
                    child: const Text('Increase Size'),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      if (myfontsize > 6) {
                        myfontsize = myfontsize - 2.0;
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Can not decrease more size',
                              style: TextStyle(fontSize: 18),
                            ),
                            padding: EdgeInsets.all(20),
                          ),
                        );
                      }
                      setState(() {});
                    },
                    child: const Text('Decrease Size'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
