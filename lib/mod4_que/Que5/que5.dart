// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class M4Que5 extends StatefulWidget {
  const M4Que5({super.key});

  @override
  State<M4Que5> createState() => _M4Que5State();
}

class _M4Que5State extends State<M4Que5> {
  DateTime date = DateTime.now();
  late var formattedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Question 5',
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2023),
                        lastDate: DateTime(2025))
                    .then((selectedDate) {
                  if (selectedDate != null) {
                    setState(() {
                      date = selectedDate;
                      formattedDate =
                          DateFormat('d-MMM-yy').format(selectedDate);
                    });
                  }
                });
              },
              child: const Text('Select date'),
            ),
          ),
          const SizedBox(height: 20),
          Text(date.toString()),
        ],
      ),
    );
  }
}
