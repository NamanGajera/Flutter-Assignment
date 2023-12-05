import 'package:flu_ass/que/que1/que1.dart';
import 'package:flu_ass/que/que1/que1_2.dart';
import 'package:flu_ass/que/que2/que2.dart';
import 'package:flu_ass/que/que3/que3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Assignments());
}

class Assignments extends StatelessWidget {
  const Assignments({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var _page = [
      const Que1(),
      const Que1screen2(),
      const Que2(),
      const Que3(),
    ];

    var _pagename = [
      'Question 1',
      'Question 1_2',
      'Question 2',
      'Question 3',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Ui'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: _pagename.length,
              itemBuilder: (context, index) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return _page[index];
                      }),
                    );
                  },
                  child: Text(_pagename[index]),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
