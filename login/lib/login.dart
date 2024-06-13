// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late double screenWidth = MediaQuery.of(context).size.width;
  late double screenHeight = MediaQuery.of(context).size.height;
  bool _passwordVisible = false;
  final TextEditingController _userIdController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 189, 241, 248),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(right: screenWidth * 0.02),
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.1,
                ),
                //wlc
                Padding(
                  padding: EdgeInsets.only(
                    top: 0.03 * screenHeight,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome ',
                        style: TextStyle(
                          fontSize: 25 * (screenWidth / 360),
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(24, 97, 121, 0.8),
                        ),
                      ),
                      Text(
                        'Back',
                        style: TextStyle(
                          fontSize: 25 * (screenWidth / 360),
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 25, 171, 86),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                //form
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.035),
                  child: Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 0.11 * screenWidth,
                            vertical: 0.01 * screenHeight,
                          ),
                          child: TextFormField(
                            controller: _userIdController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  25 * (screenWidth / 360),
                                ),
                              ),
                              labelText: 'User Id',
                              labelStyle: const TextStyle(
                                color: Color.fromARGB(255, 80, 108, 121),
                              ),
                              hintText: 'Registered contact number',
                              hintStyle: TextStyle(color: Colors.grey.shade500),
                              prefixIcon: const Icon(Icons.person),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 0.11 * screenWidth,
                            vertical: 0.01 * screenHeight,
                          ),
                          child: TextFormField(
                            controller: _passwordController,
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  25 * (screenWidth / 360),
                                ),
                              ),
                              labelText: 'Password',
                              hintText: 'Enter your password',
                              hintStyle: TextStyle(color: Colors.grey.shade500),
                              labelStyle: const TextStyle(
                                color: Color.fromARGB(255, 80, 108, 121),
                              ),
                              prefixIcon: const Icon(Icons.password),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 0.01 * screenHeight,
                            right: 0.15 * screenWidth,
                          ),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: Colors.lightBlue.shade900,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12 * (screenWidth / 360),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.012,
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 0.02 * screenHeight),
                            child: SizedBox(
                              width: screenWidth * 0.5,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 4, 73, 129),
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
