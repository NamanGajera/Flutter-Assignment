import 'package:flu_ass/que/que1/que1.dart';
import 'package:flu_ass/que/que1/que1_2.dart';
import 'package:flu_ass/que/que10/que10.dart';
import 'package:flu_ass/que/que2/que2.dart';
import 'package:flu_ass/que/que3/que3.dart';
import 'package:flu_ass/que/que4/que4.dart';
import 'package:flu_ass/que/que5/que5.dart';
import 'package:flu_ass/que/que6/que6.dart';
import 'package:flu_ass/que/que7/que7.dart';
import 'package:flu_ass/que/que8/que8.dart';
import 'package:flu_ass/que/que9/que9.dart';
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
    var page = [
      const Que1(),
      const Que1screen2(),
      const Que2(),
      const Que3(),
      const Que4(),
      const Que5(),
      const Que6(),
      const Que7(),
      const Que8(),
      const Que9(),
      const Que10(),
    ];

    var pagename = [
      'Question 1',
      'Question 1_2',
      'Question 2',
      'Question 3',
      'Question 4',
      'Question 5',
      'Question 6',
      'Question 7',
      'Question 8',
      'Question 9',
      'Question 10',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Ui'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: pagename.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return page[index];
                        }),
                      );
                    },
                    child: Text(pagename[index]),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
