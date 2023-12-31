import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class M4Que7 extends StatelessWidget {
  const M4Que7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Question 7',
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Edit'),
                  onTap: () {
                    Fluttertoast.showToast(msg: 'Edit Select');
                  },
                ),
                PopupMenuItem(
                  child: Text('View'),
                  onTap: () {
                    Fluttertoast.showToast(msg: 'View Select');
                  },
                ),
                PopupMenuItem(
                  child: Text('Delete'),
                  onTap: () {
                    Fluttertoast.showToast(msg: 'Delete Select');
                  },
                ),
              ];
            },
          ),
        ],
      ),
    );
  }
}
