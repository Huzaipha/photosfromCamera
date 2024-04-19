import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_sliding_box/flutter_sliding_box.dart';
import 'package:test_imagepicker/Screen/scan_page.dart';

class result_screen extends StatelessWidget {
  const result_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => scan_page(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back, size: 30, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text('Result Screen',
            style: GoogleFonts.outfit(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/crops.jpg'),
                  fit: BoxFit.fill)),
          child: SingleChildScrollView(
            child: SlidingBox(
                draggableIconColor: Colors.white,
                color: Color(0xFFEEF7E8),
                draggableIconBackColor: Colors.green,
                minHeight: 50,
                maxHeight: 500,
                body: Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text('Here are the results will show',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
