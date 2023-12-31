// ignore_for_file: must_be_immutable

import 'package:flu_ass/mod4_que/Que1/que1.dart';
import 'package:flu_ass/mod4_que/Que3/que3.dart';
import 'package:flu_ass/mod4_que/Que4/que4.dart';
import 'package:flu_ass/mod4_que/Que5/que5.dart';
import 'package:flu_ass/mod4_que/Que7/que7.dart';
import 'package:flu_ass/mod4_que/Que8/que8.dart';
import 'package:flu_ass/mod4_que/Que9/que9.dart';
import 'package:flutter/material.dart';

import 'mod4_que/Que2/que2.dart';
import 'mod4_que/Que6/que6.dart';

class Module4 extends StatelessWidget {
  Module4({super.key});

  List quename = [
    'Question 1',
    'Question 2',
    'Question 3',
    'Question 4',
    'Question 5',
    'Question 6',
    'Question 7',
    'Question 8',
    'Question 9',
  ];

  List quepage = const [
    M4Que1(),
    M4Que2(),
    M4Que3(),
    M4Que4(),
    M4Que5(),
    M4Que6(),
    M4Que7(),
    M4Que8(),
    M4Que9(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Module 4'),
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
            itemCount: quename.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return quepage[index];
                      }),
                    );
                  },
                  child: Text(quename[index]),
                ),
              );
            },
          ),
        ));
  }
}
