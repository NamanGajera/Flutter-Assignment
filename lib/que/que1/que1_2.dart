import 'package:flutter/material.dart';

class Que1screen2 extends StatelessWidget {
  const Que1screen2({super.key});

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
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Image.asset('assets/que1_2.jpg'),
          const ListTile(
            title: Text('sunset pic'),
            subtitle: Text('Gujarat, India'),
            trailing: Icon(Icons.star_border),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  Text('Call'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.navigation,
                    color: Colors.blue,
                  ),
                  Text('Rout'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.blue,
                  ),
                  Text('Share'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
