import 'package:bakery_shop/loginScreen.dart';
import 'package:bakery_shop/signup_screen.dart';
import 'package:flutter/material.dart';

class Bakerypage extends StatefulWidget {
  const Bakerypage({super.key});

  @override
  State<Bakerypage> createState() => _BakerypageState();
}

class _BakerypageState extends State<Bakerypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6E2816),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/bakery icons.png',
            // Replace with your background image asset path
            fit: BoxFit.fill,
          ),

          // Centered Widgets
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo Image
                Image.asset(
                  'assets/Logo.png', // Replace with your logo image asset path
                  width: 200,
                  height: 200,
                ),
                SizedBox(
                  height: 18,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => loginScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      height: 46,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xffE3BFCC),
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              color: Color(0xff722F1E),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                // Password TextField
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      height: 46,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xffC37960),
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          'Create new account',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Forget Password?',
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
