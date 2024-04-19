
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  final List<String> imglist = [
    'images/crop1.png',
    'images/crop2.png',
    'images/crop3.png',
    'images/crop4.png',
    
  ];
  String test = 'Wheat';
  final List<String> text = [
    'Wheat',
    'Rice',
    'Tomato',
    ' Carrot',
  ];
  final CarouselController controller = CarouselController();

  int customIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            RichText(
              text: TextSpan(
                text: 'Looking for a ',
                style: GoogleFonts.outfit(fontSize: 20, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: '$test',
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
           
            CarouselSlider(
              carouselController: controller,
              options: CarouselOptions(
                height: 400.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    test = text[index];
                  });
                },
              ),
              items: [
                0,
                1,
                2,
                3,
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(imglist[i],
                          width: MediaQuery.of(context).size.width * 0.85,
                          height: MediaQuery.of(context).size.width * 0.85),
                    );
                  },
                );
              }).toList(),
            ),
            
            SizedBox(
                width: 300,
                height: 45,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Scan your crop now',
                      style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
