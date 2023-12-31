import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    List image = [
      'assets/food1.webp',
      'assets/food2.webp',
      'assets/food3.jpeg',
      'assets/food3.jpeg',
      'assets/food2.webp',
      'assets/img1.jpg',
      'assets/img3.jpg',
      'assets/img4.jpg',
      'assets/img2.jpg',
      'assets/img1.jpg',
      'assets/img3.jpg',
      'assets/que1_2.jpg',
      'assets/food1.webp',
      'assets/food3.jpeg',
      'assets/food2.webp',
      'assets/img2.jpg',
      'assets/img4.jpg',
    ];
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: GridView.builder(
            itemCount: image.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 100,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                child: Image(
                  image: AssetImage(image[index]),
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
