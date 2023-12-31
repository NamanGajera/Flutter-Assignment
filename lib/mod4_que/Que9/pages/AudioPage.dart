import 'package:flutter/material.dart';

class AudioPage extends StatelessWidget {
  const AudioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const ListTile(
                title: Text('Music Name'),
                leading: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                  radius: 30,
                ),
                subtitle: Text('Artist Name'),
                trailing: Icon(Icons.favorite_border),
              );
            },
          ),
        ),
      ),
    );
  }
}
