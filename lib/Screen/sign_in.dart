// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:test_imagepicker/Screen/home.dart';
import 'package:test_imagepicker/Screen/sign_up.dart';
import 'package:test_imagepicker/widgets/textfield.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key, required String title});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  AppBar BuildAppBar() {
    return AppBar();
  }

  Widget MainBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/SignInScreen.png",
          height: 260,
        ),
        Container(
            margin: EdgeInsets.only(top: 15, bottom: 15),
            child: Column(
              children: [
                Text(
                  "Let's Sign In",
                  style: TextStyle(
                    color: Colors.green,
                    fontFamily: "Lato",
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )),

        // Container(
        //   margin: EdgeInsets.only(top: 15),
        //   child: Column(
        //     children: [
        //       Text(
        //         "Wont miss any offer, discount, message and call \n from your local service providers.",
        //         textAlign: TextAlign.center,
        //         style: TextStyle(
        //           fontSize: 14,
        //           fontFamily: "Lato",
        //           color: Colors.grey[900],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        Container(
          padding: EdgeInsets.only(top: 10),
          margin: EdgeInsets.only(left: 20, top: 10, right: 20),
          width: 450,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 1, spreadRadius: 0, color: Colors.black),
            ],
          ),
          child: MyTextFromField(
            hintText: 'Email',
            obscureText: false,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          margin: EdgeInsets.only(left: 20, top: 10, right: 20),
          width: 450,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 1, spreadRadius: 0, color: Colors.black),
            ],
          ),
          child: MyTextFromField(
            hintText: 'Password',
            obscureText: true,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 10, right: 20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => Home(),
                ),
              );
            },
            child: Text(
              "Sign In",
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontFamily: "Lato"),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[900],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              minimumSize: Size(450, 50),
            ),
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 10, right: 20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => SignUpScreen(
                    title: '',
                  ),
                ),
              );
            },
            child: Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontFamily: "Lato"),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              minimumSize: Size(450, 50),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                MainBody(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
