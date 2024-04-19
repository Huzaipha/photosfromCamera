


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget draw(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 43, 43, 43),
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
                top: wid * 0.05,
                bottom: wid * 0.07,
                left: wid * 0.05,
                right: wid * 0.1),
            child: Row(
              children: [
              
                   
                  
                 Image.asset('assets/images/crop3.png',
                        height: 60, width: 70, fit: BoxFit.fill),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //// ----------- NAME and rating IN DRAWEER
                    ///
                    ///
                    Text(
                      'User',
                      style: GoogleFonts.outfit(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                  ],
                ),
              ],
            ),
          ),

          Divider(
            color: Color(0xFF787878),
            height: 30,
            indent: 20,
            endIndent: 20,
          ),

          
          MaterialButton(
            onPressed: () {},
            child: ListTile(
              contentPadding: EdgeInsets.only(top: 7, left: 40, bottom: 7),
              selectedTileColor: Color(0xFF6F61EF),
              selected: false,
              title: Text(
                'Manage Profile',
                style: GoogleFonts.outfit(
                  fontSize:20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: ListTile(
              contentPadding: EdgeInsets.only(top: 7, left: 40, bottom: 7),
              selectedTileColor: Color(0xFF6F61EF),
              selected: false,
              title: Text(
                'History',
                style: GoogleFonts.outfit(
                  fontSize:20,
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: ListTile(
              contentPadding: EdgeInsets.only(top: 7, left: 40, bottom: 7),
              selectedTileColor: Color(0xFF6F61EF),
              selected: false,
              title: Text(
                'Gallery',
                style: GoogleFonts.outfit(
                  fontSize:20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: ListTile(
              contentPadding: EdgeInsets.only(top: 7, left: 40, bottom: 7),
              selectedTileColor: Color(0xFF6F61EF),
              selected: false,
              title: Text(
                'Settings',
                style: GoogleFonts.outfit(
                 fontSize:20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: ListTile(
              contentPadding: EdgeInsets.only(top: 7, left: 40, bottom: 7),
              selectedTileColor: Color(0xFF6F61EF),
              selected: false,
              title: Text(
                'Help Center',
                style: GoogleFonts.outfit(
                  fontSize:20,
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          Divider(
            color: Color(0xFF787878),
            height: 30,
            indent: 20,
            endIndent: 20,
          ),

// --------------------- Become Worker ------------------

          
        ],
      ),
    );
  }