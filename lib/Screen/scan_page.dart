
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_imagepicker/Screen/home.dart';
import 'package:test_imagepicker/Screen/result_screen.dart';

class scan_page extends StatelessWidget {
  const scan_page({super.key});

  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const Home(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back, size: 30, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text('Scan your crop',
            style: GoogleFonts.outfit(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              child: Text('Image will capture here',
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  )),
              width: wid * 0.75,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 3,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  )
                  ,
                  onPressed: () {
                    Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) =>  result_screen(),
              ),
            );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.camera, color: Colors.white), 
                      Text('Open Image',
                          style: GoogleFonts.nunito(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
