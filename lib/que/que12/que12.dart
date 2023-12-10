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
List ingrename = [
  'Noodie',
  'Shrimp',
  'Egg',
  'Scallion',
];
String abouttext =
    'A vibrant thai sausage made with ground chicken, pluse it\'s spicy dip, from chef parnass savang of atlanta\'s tala market';

int current = 0;

class _Que12State extends State<Que12> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 32,
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    size: 32,
                  ),
                ],
              ),
              const SizedBox(height: 18),
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
                          fontSize: 34,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '20-30min',
                                style: TextStyle(
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            '2.4km',
                            style: TextStyle(color: Colors.black54),
                          ),
                          const SizedBox(width: 8),
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
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'R',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
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
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.star_border),
                  Text(
                    '4.7',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 45,
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
                        // width: 100,
                        height: 45,
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
              const SizedBox(height: 18),
              Expanded(
                child: ListView.builder(
                  itemCount: foodname.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(imgname[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 14,
                              ),
                              Text(
                                foodname[index],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'No1. in Sales',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                              Text(
                                '\$12',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return ItemDetails(
                                    ItemImage: imgname[index],
                                    itemname: foodname[index],
                                  );
                                }),
                              );
                            },
                            child: Container(
                              alignment: Alignment.topCenter,
                              padding: const EdgeInsets.only(top: 11, right: 8),
                              child: const Icon(
                                Icons.keyboard_arrow_right,
                                size: 30,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemDetails extends StatelessWidget {
  String itemname;
  String ItemImage;
  ItemDetails({
    super.key,
    required this.itemname,
    required this.ItemImage,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      size: 32,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.favorite_border,
                    size: 32,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  const Positioned(
                    child: SizedBox(
                      height: 100,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    top: 100,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.8,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(45),
                          right: Radius.circular(45),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 100),
                          Text(
                            itemname,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 20),
                              SizedBox(
                                height: 50,
                                width: 100,
                                child: ListTile(
                                  leading: Icon(
                                    Icons.access_time,
                                    size: 22,
                                    color: Colors.green,
                                  ),
                                  contentPadding: EdgeInsets.all(0.0),
                                  horizontalTitleGap: 1.0,
                                  minLeadingWidth: 0.0,
                                  titleAlignment: ListTileTitleAlignment.center,
                                  title: Text(
                                    '50min',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                                width: 100,
                                child: ListTile(
                                  leading: Icon(
                                    Icons.star,
                                    size: 22,
                                    color: Colors.amber,
                                  ),
                                  contentPadding: EdgeInsets.all(0.0),
                                  horizontalTitleGap: 0.0,
                                  minLeadingWidth: 5.0,
                                  minVerticalPadding: 0,
                                  titleAlignment: ListTileTitleAlignment.center,
                                  title: Text(
                                    '4.8',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                                width: 100,
                                child: ListTile(
                                  leading: Icon(
                                    Icons.local_fire_department_rounded,
                                    color: Colors.red,
                                    size: 22,
                                  ),
                                  contentPadding: EdgeInsets.all(0.0),
                                  horizontalTitleGap: 0.0,
                                  minLeadingWidth: 5.0,
                                  titleAlignment: ListTileTitleAlignment.center,
                                  minVerticalPadding: 0,
                                  title: Text(
                                    '325 Kcal',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Container(
                            height: 50,
                            width: 220,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(28),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 70,
                                  child: const Text(
                                    '\$12',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const SizedBox(width: 10),
                                      const Icon(Icons.remove),
                                      const SizedBox(width: 10),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 50,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Text('1'),
                                      ),
                                      const SizedBox(width: 10),
                                      const Icon(Icons.add),
                                      const SizedBox(width: 10),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                          Container(
                            padding: const EdgeInsets.only(left: 12),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Ingredienta',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                              itemCount: ingrename.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  alignment: Alignment.center,
                                  margin:
                                      const EdgeInsets.only(right: 11, left: 5),
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Text(
                                    ingrename[index],
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 16),
                          Container(
                            padding: const EdgeInsets.only(left: 12),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'About',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 12, right: 10),
                            child: Text(
                              abouttext,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(color: Colors.black87),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: MediaQuery.of(context).size.width / 3.2,
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage(ItemImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
          ),
          backgroundColor: Colors.amber,
        ),
      ),
    );
  }
}
