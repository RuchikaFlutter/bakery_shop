import 'package:bakery_shop/HomeScreen.dart';
import 'package:bakery_shop/bakerypage.dart';
import 'package:bakery_shop/bottom_bar.dart';
import 'package:bakery_shop/splash_screen.dart';
import'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: const bottom_bar(),
    );
  }
}


