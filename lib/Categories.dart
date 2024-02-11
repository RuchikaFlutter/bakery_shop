import 'package:bakery_shop/const/imageConst.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List frames = [frame1, frame2, frame3, frame4, frame5, frame6];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child:   Scaffold(
        backgroundColor: Color(0xffFFF5F2),
          body: SingleChildScrollView(
            child: Column(
              children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Text("Categeories", style: TextStyle(color: Color(0xff722F1E), fontSize: 22, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
                     ListView.builder(
                         shrinkWrap: true,
                                   itemCount: frames.length,
                                   scrollDirection: Axis.vertical,
                                   itemBuilder: (BuildContext context, int index) {
                                   return Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
                                     child: Image.asset(frames[
                      index
                                     ],scale:1 ,),
                                   );
                                 },
            
                                 ),
              ],
            ),
          ),
      
        ),
      ),
    );
  }
}
