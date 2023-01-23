import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/util/catageory_text.dart';

import '../util/coffe_container.dart';
import '../util/coffee_row.dart';
import 'deteail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffType = [
    [
      'Cappuccino',
      true,
    ],
    [
      'Late',
      false,
    ],
    [
      'Macciato',
      false,
    ],
    [
      'Black',
      false,
    ],
    [
      'Expresso',
      false,
    ],
  ];

  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffType.length; i++) {
        coffType[i][1] = false;
      }
      coffType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              'Find The Best Coffe for You',
              style: GoogleFonts.bebasNeue(
                  fontSize: MediaQuery.of(context).size.width * 0.12),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 25, right: 25),
                  fillColor: Colors.black54,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  hintText: 'find your coffe ....',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade900),
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade900),
                      borderRadius: BorderRadius.all(Radius.circular(25.0)))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffType.length,
                itemBuilder: (context, index) {
                  return TextWidget(
                      CoffeType: coffType[index][0],
                      isSelected: coffType[index][1],
                      onTap: (() {
                        coffeeTypeSelected(index);
                      }));
                }),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: GestureDetector(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Detail(
                                    coffeeName: 'Cappucino',
                                    disc: 'milk',
                                    imagePath: 'lib/images/Coffe1.jpg',
                                    price: '4.20')))
                      },
                      child: CoffeContainer(
                          coffeeName: 'Cappucino',
                          disc: 'milk',
                          imagePath: 'lib/images/Coffe1.jpg',
                          price: '4.20'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: GestureDetector(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Detail(
                                    coffeeName: 'black Coffee',
                                    disc: 'latte',
                                    imagePath: 'lib/images/Coffe2.jpg',
                                    price: '9.20')))
                      },
                      child: CoffeContainer(
                          coffeeName: 'black Coffee',
                          disc: 'latte',
                          imagePath: 'lib/images/Coffe2.jpg',
                          price: '9.20'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: GestureDetector(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Detail(
                                    coffeeName: 'Ice Coffee',
                                    disc: 'chocolate',
                                    imagePath: 'lib/images/Coffe3.jpg',
                                    price: '9.20')))
                      },
                      child: CoffeContainer(
                          coffeeName: 'Ice Coffee',
                          disc: 'chocolate',
                          imagePath: 'lib/images/Coffe3.jpg',
                          price: '9.20'),
                    ),
                  ),
                ],
              )),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Special for you',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ),
          CoffeeRow(
            imgpz: 'lib/images/Coffe4.jpg',
            text1: '5 Coffee Beans You',
            text2: 'Must Try!',
          ),
          SizedBox(
            height: 12,
          ),
          CoffeeRow(
            imgpz: 'lib/images/Coffe5.jpg',
            text1: 'Brazil Coffee Beans You',
            text2: 'Must Try!',
          ),
        ],
      ),
    );
  }
}
