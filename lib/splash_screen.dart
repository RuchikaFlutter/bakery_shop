import 'dart:async';

import 'package:bakery_shop/bakerypage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
      Bakerypage()));
    });
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6E2816),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/bakery icons.png',
            // Replace with your background image asset path
            fit: BoxFit.fill,
          ),
          // Background Image
          // Centered Widgets
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo Image
                Image.asset(
                  'assets/logo.png',
                  width: 200,
                  height: 200,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
