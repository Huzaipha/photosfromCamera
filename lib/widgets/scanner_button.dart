import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_imagepicker/Screen/OpenCameraScree.dart';

Widget scanner_button(BuildContext context) {
  double wid = MediaQuery.of(context).size.width;
  return MaterialButton(
    onPressed: () {
      Navigator.push<void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => OpenCameraScreen(),
        ),
      );
    },
    child: Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(Icons.camera_enhance, size: 25, color: Colors.green),
        SizedBox(width: 30),
        Text('Scan your crops now ',
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.green,
            )),
      ]),
      height: 50,
      width: wid * 0.90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFEEF7E8),
      ),
    ),
  );
}
