import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget research_container(String image, String name, String description){
  return Container(
    padding: EdgeInsets.all(10),
    width: 340,
    height: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),

      color: Color(0xFFEEF7E8),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('$name',
                        style: GoogleFonts.nunito(
                          fontSize:14,
                          fontWeight: FontWeight.w500,
                          color: Colors.green,
                        )),
            Container( width: 145,
            height: 90,
              child: Text('$description',
              maxLines: 5,
                          style: GoogleFonts.nunito(
                            fontSize:18,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 40, 40, 40),
                          )),
            ),
          ],
        ),

        Image.asset('$image')
      ]
    ),
  );
}