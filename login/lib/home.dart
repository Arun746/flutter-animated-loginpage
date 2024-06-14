// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/signup.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late double screenWidth = MediaQuery.of(context).size.width;
  late double screenHeight = MediaQuery.of(context).size.height;
  bool isShowSignup = false;
  late AnimationController _animatedController;
  late Animation<double> _animatedrotate;

  @override
  void initState() {
    super.initState();
    _animatedController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _animatedrotate =
        Tween<double>(begin: 0, end: 90).animate(_animatedController);
  }

  @override
  void dispose() {
    _animatedController.dispose();
    super.dispose();
  }

  void updateView() {
    setState(() {
      isShowSignup = !isShowSignup;
    });
    isShowSignup
        ? _animatedController.forward()
        : _animatedController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
          animation: _animatedController,
          builder: (context, _) {
            return Stack(
              children: [
                //login
                AnimatedPositioned(
                  duration: Duration(milliseconds: 500),
                  height: screenHeight,
                  width: screenWidth * 0.88,
                  left: isShowSignup ? -screenWidth * 0.76 : 0,
                  //if login screen then 0 else 0.12 i,e 0.88-0.76=0.12
                  child: Container(
                    color: Color.fromARGB(255, 157, 245, 238),
                    child: Login(),
                  ),
                ),
                // signup
                AnimatedPositioned(
                  duration: Duration(milliseconds: 500),
                  height: screenHeight,
                  width: screenWidth,
                  left: isShowSignup ? screenWidth * 0.12 : screenWidth * 0.88,
                  //if signup then 0.12 else width of login screen
                  child: Container(
                    color: Color.fromARGB(255, 140, 220, 233),
                    child: SignUp(),
                  ),
                ),
                //loginbutton
                AnimatedPositioned(
                  duration: Duration(milliseconds: 500),
                  bottom: isShowSignup ? screenHeight / 2 : screenHeight * 0.3,
                  left: isShowSignup
                      ? screenWidth * 0.03
                      : screenWidth * 0.44 - 100,
                  //login screen's width is 88% so 88/2
                  child: Transform.rotate(
                    angle: -_animatedrotate.value * pi / 180,
                    alignment: Alignment.topLeft,
                    child: InkWell(
                      onTap: updateView,
                      child: SizedBox(
                        width: isShowSignup
                            ? screenWidth * 0.3
                            : screenWidth * 0.5,
                        child: isShowSignup
                            ? Text(
                                'Login',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenWidth * 14 / 360),
                              )
                            : ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 4, 73, 129),
                                  shadowColor: Colors.transparent,
                                ),
                                child: Text(
                                  'Login',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                      ),
                    ),
                  ),
                ),
                //signupbutton
                AnimatedPositioned(
                  duration: Duration(milliseconds: 500),
                  bottom:
                      !isShowSignup ? screenHeight / 2.5 : screenHeight * 0.3,
                  right: isShowSignup
                      ? screenWidth * 0.44 - 100
                      : screenWidth * 0.02,
                  child: Transform.rotate(
                    angle: (90 - _animatedrotate.value) * pi / 180,
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: updateView,
                      child: SizedBox(
                        width: !isShowSignup
                            ? screenWidth * 0.3
                            : screenWidth * 0.5,
                        child: !isShowSignup
                            ? Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenWidth * 14 / 360),
                              )
                            : ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 4, 73, 129),
                                  shadowColor: Colors.transparent,
                                ),
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
