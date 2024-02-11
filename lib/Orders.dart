import 'package:bakery_shop/const/imageConst.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffFFF5F2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height / 1.5,
              width: size.width,
              child: Image.asset(
                order,
                fit: BoxFit.fill,
                scale: 2.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Text(
                    'Description',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text:
                          '''A cappuccino is a coffee-based drink made primarily from espresso and milk''',
                          style: TextStyle(fontSize: 16),
                        ),
                        TextSpan(
                          text: ". . .Read more",
                          style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontSize: 16,
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
              ],
            ),

            weight(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(width: 100,height: 50,
                decoration: BoxDecoration(

                  color: Color(0xffB87651)
                ),
              ),
                Container(height: size.height/2,
                  decoration: BoxDecoration(

                      color: Color(0xffB87651)
                  ),
                ),
            ],)
          ],
        ),
      ),
    );
  }

  Widget weight() {
    List weight = ['250g', '500g', '1kg'];
    double spacing = 10.0; // Adjust the spacing as needed
    int selectedWeightIndex = 0;
    return Container(
      color: Colors.transparent,
      height: 40,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(weight.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedWeightIndex = index;
                });
              },
              child: Container(

                padding: EdgeInsets.symmetric(horizontal: spacing),
                decoration: BoxDecoration(
                  color: index == selectedWeightIndex ? Colors.black : Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    weight[index],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
