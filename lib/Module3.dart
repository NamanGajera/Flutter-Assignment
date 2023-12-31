// ignore_for_file: must_be_immutable

import 'package:flu_ass/mod3_que/que1/que1.dart';
import 'package:flu_ass/mod3_que/que1/que1_2.dart';
import 'package:flu_ass/mod3_que/que2/que2.dart';
import 'package:flu_ass/mod3_que/que3/que3.dart';
import 'package:flu_ass/mod3_que/que4/que4.dart';
import 'package:flu_ass/mod3_que/que5/que5.dart';
import 'package:flu_ass/mod3_que/que6/que6.dart';
import 'package:flu_ass/mod3_que/que7/que7.dart';
import 'package:flu_ass/mod3_que/que8/que8.dart';
import 'package:flu_ass/mod3_que/que9/que9.dart';
import 'package:flutter/material.dart';

import 'mod3_que/que10/que10.dart';
import 'mod3_que/que11/que11.dart';
import 'mod3_que/que12/que12.dart';

class Module3 extends StatelessWidget {
  Module3({super.key});

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
    const Que11(),
    const Que12(),
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
    'Question 11',
    'Question 12',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Module 3'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
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
    );
  }
}
