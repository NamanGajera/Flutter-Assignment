import 'package:flutter/material.dart';

class Que12 extends StatefulWidget {
  const Que12({super.key});

  @override
  State<Que12> createState() => _Que12State();
}

List categories = [
  'Recommend',
  'Popular',
  'Noodles',
  'Pizza',
  'Drink',
  'Ice-Cream',
];

List imgname = [
  'assets/food1.webp',
  'assets/food2.webp',
  'assets/food3.jpeg',
];
List foodname = [
  'Soba Soup',
  'Sei Ua Samun Phrai',
  'Ratatoullie Pasta',
];

int current = 0;

class _Que12State extends State<Que12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Row(
              children: [
                Icon(Icons.arrow_back),
                Spacer(),
                Icon(Icons.search),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Restaurant',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              '20-30min',
                              style: TextStyle(
                                color: Colors.white60,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          '2.4km',
                          style: TextStyle(color: Colors.black54),
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          'Restaurant',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      'R',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Text(
                  'Orange Sandwiches is delicious',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Icon(Icons.star_border),
                Text(
                  '4.7',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 40,
              child: ListView.builder(
                itemCount: categories.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        current = index;
                      });
                    },
                    child: Container(
                      width: 100,
                      height: 35,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        color: current == index ? Colors.amber : Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Text(categories[index]),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: foodname.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset(
                            imgname[index],
                            height: 60,
                            width: 60,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(foodname[index]),
                            Text('No1. in Sales'),
                            Text('\$12'),
                          ],
                        ),
                        const Spacer(),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Icon(Icons.keyboard_arrow_right),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
