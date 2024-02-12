import 'package:bakery_shop/const/imageConst.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List<Color> buttonColor = [
    Colors.grey,
    Colors.grey,
    Colors.grey,
  ];
  List<Color> buttonTextColor = [Colors.white, Colors.white, Colors.white];

  List _text = ['250g', '500g', '1kg'];

  void changecolor(int index) {
    setState(() {
      for (int i = 0; i < buttonColor.length; i++) {
        if (i == index) {
          buttonColor[i] = Colors.black;
          buttonTextColor[i] = Colors.brown; // Change text color to black
        } else {
          buttonColor[i] = Colors.grey;
          buttonTextColor[i] = Colors.white; // Reset other text colors to white
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffFFF5F2),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: size.width,
                    child: Image.asset(
                      order,
                      fit: BoxFit.fill,
                      scale: 2.5,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      'A cappuccino is a coffee-based drink made primarily from espresso and milk . . . Read more',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          3,
                          (index) => GestureDetector(
                            onTap: () => changecolor(index),
                            child: Container(
                              width: size.width / 4,
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                color: buttonColor[index],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  _text[index],
                                  style: TextStyle(
                                      color: buttonTextColor[index],
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 100, left: 12, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffB87651),
                  ),
                  width: size.width / 3,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    'ADD TO CART',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffB87651),
                  ),
                  width: size.width / 3,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
