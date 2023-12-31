import 'package:flu_ass/mod4_que/Que8/pages/emailpage.dart';
import 'package:flu_ass/mod4_que/Que8/pages/messagePage.dart';
import 'package:flu_ass/mod4_que/Que8/pages/videopage.dart';
import 'package:flutter/material.dart';

class M4Que8 extends StatefulWidget {
  const M4Que8({super.key});

  @override
  State<M4Que8> createState() => _M4Que8State();
}

class _M4Que8State extends State<M4Que8> {
  List pages = const [
    GmailPage(),
    MessagePage(),
    VideoPage(),
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Question 8',
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            label: 'Gmail',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_sharp),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: 'Video',
          ),
        ],
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
    );
  }
}
