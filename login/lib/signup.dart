// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, prefer_final_fields, use_build_context_synchronously

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();

  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  late double screenWidth = MediaQuery.of(context).size.width;
  late double screenHeight = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(right: screenWidth * 0.04),
            child: Column(
              children: [
                //sign
                Padding(
                  padding: EdgeInsets.only(top: 0.01 * screenHeight),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign ',
                        style: TextStyle(
                          fontSize: 25 * (screenWidth / 360),
                          fontWeight: FontWeight.w500,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        'Up',
                        style: TextStyle(
                          fontSize: 25 * (screenWidth / 360),
                          fontWeight: FontWeight.w500,
                          color: Colors.blue[100],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 0.08 * screenWidth,
                    vertical: 0.008 * screenHeight,
                  ),
                  child: Text(
                    'Create An Account And Enjoy Our Services',
                    style: TextStyle(
                      fontSize: 16 * (screenWidth / 360),
                      color: Colors.grey.shade700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                //form
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 0.12 * screenWidth,
                      vertical: 0.01 * screenHeight),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: firstname,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'First Name',
                            hintText: 'Enter your first name',
                            hintStyle: TextStyle(
                              fontSize: 12 * (screenWidth / 360),
                              color: Colors.grey.shade600,
                            ),
                            prefixIcon: Icon(Icons.person),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your first name';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 0.01 * screenHeight),
                        TextFormField(
                          controller: lastname,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Last Name',
                            hintText: 'Enter your Last name',
                            hintStyle: TextStyle(
                              fontSize: 12 * (screenWidth / 360),
                              color: Colors.grey.shade600,
                            ),
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        SizedBox(height: 0.01 * screenHeight),
                        TextFormField(
                          controller: password,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'Enter Password',
                            hintStyle: TextStyle(
                              fontSize: 12 * (screenWidth / 360),
                              color: Colors.grey.shade600,
                            ),
                            prefixIcon: Icon(Icons.password),
                          ),
                        ),
                        SizedBox(height: 0.01 * screenHeight),
                        TextFormField(
                          controller: confirmpassword,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Confirm Password',
                            hintText: 'Confirm your password',
                            hintStyle: TextStyle(
                              fontSize: 12 * (screenWidth / 360),
                              color: Colors.grey.shade600,
                            ),
                            prefixIcon: Icon(Icons.password),
                          ),
                          obscureText: true,
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
                                  'Sign Up',
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
