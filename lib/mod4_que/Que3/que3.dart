import 'package:flutter/material.dart';

class M4Que3 extends StatefulWidget {
  const M4Que3({super.key});

  @override
  State<M4Que3> createState() => _M4Que3State();
}

class _M4Que3State extends State<M4Que3> {
  int? selectedradio;
  String city = 'Selected City';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Question 3',
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
          RadioListTile(
            value: 0,
            groupValue: selectedradio,
            onChanged: (val) {
              setState(() {
                selectedradio = val;
              });
            },
            title: const Text('Ahemdabad'),
          ),
          RadioListTile(
            value: 1,
            groupValue: selectedradio,
            onChanged: (val) {
              setState(() {
                selectedradio = val;
              });
            },
            title: const Text('Vadodara'),
          ),
          RadioListTile(
            value: 2,
            groupValue: selectedradio,
            onChanged: (val) {
              setState(() {
                selectedradio = val;
              });
            },
            title: const Text('Surat'),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (selectedradio == 0) {
                  city = 'Ahemdabad';
                } else if (selectedradio == 1) {
                  city = 'Vadodara';
                } else if (selectedradio == 2) {
                  city = 'Surat';
                }
                setState(() {});
              },
              child: Text('ok'),
            ),
          ),
          const SizedBox(height: 20),
          Text(city),
        ],
      ),
    );
  }
}
