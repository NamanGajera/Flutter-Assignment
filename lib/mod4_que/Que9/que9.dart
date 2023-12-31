import 'package:flu_ass/mod4_que/Que8/pages/videopage.dart';
import 'package:flu_ass/mod4_que/Que9/pages/AudioPage.dart';
import 'package:flu_ass/mod4_que/Que9/pages/GalleryPage.dart';
import 'package:flutter/material.dart';

class M4Que9 extends StatefulWidget {
  const M4Que9({super.key});

  @override
  State<M4Que9> createState() => _M4Que9State();
}

class _M4Que9State extends State<M4Que9> {
  List pages = const [
    GalleryPage(),
    AudioPage(),
    VideoPage(),
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Question 9',
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
            icon: Icon(Icons.image),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Audio',
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
