import 'package:flutter/material.dart';

class Que4 extends StatefulWidget {
  const Que4({super.key});

  @override
  State<Que4> createState() => _Que4State();
}

class _Que4State extends State<Que4> {
  final num1controller = TextEditingController();
  final num2controller = TextEditingController();
  int? selectedradio;
  int? num1;
  int? num2;
  String? symbol;
  int? result;
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 35),
              TextField(
                controller: num1controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: 'Enter Number 1',
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: num2controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  hintText: 'Enter Number 2',
                ),
              ),
              const SizedBox(height: 15),
              ListTile(
                leading: Radio(
                  value: 1,
                  groupValue: selectedradio,
                  onChanged: (val) {
                    setState(() {
                      selectedradio = val;
                    });
                  },
                ),
                title: const Text('Addition'),
              ),
              ListTile(
                leading: Radio(
                  value: 2,
                  groupValue: selectedradio,
                  onChanged: (val) {
                    setState(() {
                      selectedradio = val;
                    });
                  },
                ),
                title: const Text('Subtraction'),
              ),
              ListTile(
                leading: Radio(
                  value: 3,
                  groupValue: selectedradio,
                  onChanged: (val) {
                    setState(() {
                      selectedradio = val;
                    });
                  },
                ),
                title: const Text('Multiplication'),
              ),
              ListTile(
                leading: Radio(
                  value: 4,
                  groupValue: selectedradio,
                  onChanged: (val) {
                    setState(() {
                      selectedradio = val;
                    });
                  },
                ),
                title: const Text('Division'),
              ),
              ElevatedButton(
                onPressed: () {
                  num1 = int.parse(num1controller.text.toString());
                  num2 = int.parse(num2controller.text.toString());
                  if (selectedradio == 1) {
                    result = num1! + num2!;
                    symbol = '+';
                  } else if (selectedradio == 2) {
                    result = num1! - num2!;
                    symbol = '-';
                  } else if (selectedradio == 3) {
                    result = num1! * num2!;
                    symbol = '*';
                  } else if (selectedradio == 4) {
                    result = num1! ~/ num2!;
                    symbol = '/';
                  }
                  setState(() {});
                  print(result);
                },
                child: const Text('Submit'),
              ),
              const SizedBox(height: 20),
              result != null
                  ? Text(
                      '$num1 $symbol $num2 = $result',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : const Text('Choice one method'),
            ],
          ),
        ),
      ),
    );
  }
}
