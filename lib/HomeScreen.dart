import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Import the image paths properly, replace 'imageConst.dart' with the correct path
import 'const/imageConst.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF5F2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.menu),
                        const SizedBox(
                          width: 10,
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Pastry',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              WidgetSpan(
                                child: SizedBox(width: 4),
                              ),
                              TextSpan(
                                text: 'Palette',
                                style: TextStyle(
                                  color: Color(0xff894E3F),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const CircleAvatar(
                      backgroundColor: Color(0xff894E3F),
                      radius: 18,
                      child: Icon(Icons.person, color: Color(0xffFFF5F2)),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xff722F1E),
                    border: Border.all(color: const Color(0xff722F1E)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white),
                      suffixIcon: Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 16.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      'Top Picks For You',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                TopPicks(),
                Row(
                  children: [
                    Text(
                      "Today's Special",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                TodaysSpecial(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'View All',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ))
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Categories(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget TopPicks() {
    List TopPicksImg = [top1, top2, top3, top4];
    return Container(
      height: 100, // Adjust the height as needed
      child: ListView.builder(
        itemCount: TopPicksImg.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              TopPicksImg[index],
              width: 100, // Adjust the width as needed
              height: 100, // Adjust the height as needed
            ),
          );
        },
      ),
    );
  }

  Widget TodaysSpecial() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xffF9DBE4),
          borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 150,
                width: 150,
                child: Image.asset(
                  'assets/SpecialText.png',
                  fit: BoxFit.contain,
                )),
            Image.asset('assets/Cupcakes.png'),
          ],
        ),
      ),
    );
  }

  Widget Categories() {
    List CategoryImg = [cake1, cake2, cake3, cake4, cake5, cake6, cake7, cake8];
    return Container(
      height: 200,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 2.0, // Adjust this value as needed
        ),
        itemCount: CategoryImg.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            CategoryImg[index],
          );
        },
      ),
    );
  }
}
