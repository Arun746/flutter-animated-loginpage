// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/signup.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late double screenWidth = MediaQuery.of(context).size.width;
  late double screenHeight = MediaQuery.of(context).size.height;
  bool isShowSignup = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //login
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            height: screenHeight,
            width: screenWidth * 0.88,
            left: isShowSignup ? -screenWidth * 0.76 : 0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isShowSignup = !isShowSignup;
                });
              },
              child: Container(
                color: Colors.green[100],
                child: Login(),
              ),
            ),
          ),
          // signup
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            height: screenHeight,
            width: screenWidth,
            left: isShowSignup ? screenWidth * 0.12 : screenWidth * 0.88,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isShowSignup = !isShowSignup;
                });
              },
              child: Container(
                color: const Color.fromARGB(255, 79, 221, 91),
                child: SignUp(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
