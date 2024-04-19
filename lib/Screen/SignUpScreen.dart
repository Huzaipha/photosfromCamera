// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:test_imagepicker/Screen/HomeScreen.dart';
import 'package:test_imagepicker/Screen/SignInScreen.dart';
import 'package:test_imagepicker/routes/routes.dart';
import 'package:test_imagepicker/widget/textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key, required String title});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  AppBar buildAppBar() {
    return AppBar();
  }

  Widget MainBody() {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            padding: EdgeInsets.only(top: 10),
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
              hintText: 'Name',
              obscureText: false,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            margin: EdgeInsets.only(top: 10, right:20),
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
            margin: EdgeInsets.only(top: 10, right:20),
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
          Container(
            margin: EdgeInsets.only(top: 10, ),
            padding: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Already have an account",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      PageRouting.goToNextPage(
                          context: context,
                          navigateTo: SignInScreen(
                            title: '',
                          ));
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                      size: 15,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 13,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(right: 20),
              child: ElevatedButton(
                onPressed: () {
                  PageRouting.goToNextPage(
                      context: context,
                      navigateTo: HomeScreen(
                       
                      ));
                },
                child: Text(
                  "Sign Up",
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
          ),
        ],
      ),
    );
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: buildAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                children: [
                  MainBody(),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("images/grass.png"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
