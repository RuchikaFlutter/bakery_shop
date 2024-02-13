import 'package:bakery_shop/bottom_bar.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _isGmail(String email) {
    return email.endsWith('@gmail.com');
  }

  validateAndsave() async {
    final FormState form = _formKey.currentState!;
    if (form.validate()) {
      await Navigator.push(
          context, MaterialPageRoute(builder: (context) => bottom_bar()));
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: size.height / 3,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Color(0xff6E2816)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 3),
                        child: SizedBox(
                          child: Image.asset(
                            'assets/Logo.png',
                            // scale: 1.75,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * .70,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        // image: DecorationImage(
                        //   image: AssetImage(
                        //     bgImg,
                        //   ),
                        //   filterQuality: FilterQuality.high,
                        //   fit: BoxFit.fitWidth,
                        // ),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(35),
                          topLeft: Radius.circular(35),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 16.0),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Color(0xff722F1E),
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const Divider(
                              color: Colors.black,
                              thickness: 4,
                              endIndent: 150,
                              indent: 150,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Form(
                                  key: _formKey,
                                  child: Column(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 16.0),
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Email id",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff722F1E),
                                              ),
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0, vertical: 10.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Color(0xff722F1E)),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: TextFormField(
                                            controller: emailController,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Your email id...',
                                              hintStyle: TextStyle(
                                                  color: Color(0xff722F1E),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400),
                                              suffixIcon: Icon(
                                                Icons.mail_outlined,
                                                color: Color(0xff722F1E),
                                              ),
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      vertical: 12.0,
                                                      horizontal: 16.0),
                                            ),
                                            validator: (authResult) {
                                              if (authResult!.isEmpty) {
                                                return 'Please enter an email address';
                                              }

                                              // Use a more lenient regex to check for a valid email format
                                              if (!RegExp(
                                                      r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
                                                  .hasMatch(authResult)) {
                                                return 'Please enter a valid email';
                                              }

                                              if (!_isGmail(authResult)) {
                                                return 'Please enter a valid Gmail address';
                                              }

                                              return null;
                                            },
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 16.0),
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Password",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff722F1E),
                                              ),
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0, vertical: 10.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Color(0xff722F1E)),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: TextFormField(
                                            controller: passController,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Password',
                                              hintStyle: TextStyle(
                                                  color: Color(0xff722F1E),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400),
                                              suffixIcon: Icon(
                                                Icons.lock,
                                                color: Color(0xff722F1E),
                                              ),
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      vertical: 12.0,
                                                      horizontal: 16.0),
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter your password';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: validateAndsave,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0, vertical: 20.0),
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Color(0xff722F1E),
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: const Center(
                                        child: Text(
                                          "Login",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 150,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
