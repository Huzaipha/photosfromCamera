// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:test_imagepicker/Screen/OpenCameraScree.dart';
import 'package:test_imagepicker/Screen/notification.dart';
import 'package:test_imagepicker/Screen/result.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List<Widget> body = [
    //For Home
    Container(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Text(
              "Products",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Lato",
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.green,
              ),
              child: Column(
                children: [
                  Image.asset(
                    "images/SignInScreen.png",
                    width: 70,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "WHEAT",
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Services",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.yellow,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.local_hospital,
                          size: 30,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "DIESEAS CHECK",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.green,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/SignInScreen.png",
                          width: 70,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "MEDICINE",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.green,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/SignInScreen.png",
                          width: 70,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Life Of Crop",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.yellow,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/SignInScreen.png",
                          width: 70,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "SPRAYS",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    //for Notification
    notification(),
    //For Camera
    OpenCameraScreen(),
    //Help
    result(),
    //For Profile
    Icon(Icons.person),
  ];
  AppBar buildAppBar() {
    return AppBar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "Notification",
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "Detect",
            icon: Icon(
              Icons.camera,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "Help",
            icon: Icon(
              Icons.help,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
          ),
        ],
      ),
      // SafeArea(
      //   child: ListView(
      //     scrollDirection: Axis.vertical,
      //     physics: BouncingScrollPhysics(),
      //     children: [
      //       Column(
      //         children: [
      //           // MainBody(),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
