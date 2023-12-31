import 'package:flutter/material.dart';

class GmailPage extends StatelessWidget {
  const GmailPage({super.key});

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
                title: Text('Tops Technologies'),
                leading: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                  radius: 30,
                ),
                subtitle: Text('tops technologies invited you for some reason'),
                trailing: Icon(Icons.star_border),
              );
            },
          ),
        ),
      ),
    );
  }
}
