import 'package:flutter/material.dart';

class M4Que6 extends StatelessWidget {
  const M4Que6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Question 6',
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
                const PopupMenuItem(child: Text('Log out')),
                const PopupMenuItem(child: Text('profile')),
              ];
            },
          ),
        ],
      ),
    );
  }
}
