import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_imagepicker/widgets/drawer.dart';
import 'package:test_imagepicker/widgets/history_container.dart';
import 'package:test_imagepicker/widgets/research_container.dart';
import 'package:test_imagepicker/widgets/scanner_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Icon(Icons.search, size: 30),
          SizedBox(width: 20),
          Icon(Icons.bookmark_add, size: 30),
          SizedBox(width: 20),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('My Plant',
            style: GoogleFonts.outfit(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            )),
      ),
      drawer: draw(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: scanner_button(context),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Popular researches',
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    MaterialButton(
                      onPressed: () {},
                      child: Text('View all',
                          style: GoogleFonts.nunito(
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.green,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ]),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    research_container(
                        'assets/images/crop2.png',
                        'Rice problems',
                        'Bacterial Blight and its precautuins'),
                    SizedBox(width: 20),
                    research_container(
                        'assets/images/crop3.png',
                        'Rice problems',
                        'Bacterial Blight and its precautuins'),
                    SizedBox(width: 20),
                    research_container(
                        'assets/images/crop4.png',
                        'Rice problems',
                        'Bacterial Blight and its precautuins'),
                    SizedBox(width: 20),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('History',
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    MaterialButton(
                      onPressed: () {},
                      child: Text('View all',
                          style: GoogleFonts.nunito(
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.green,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ]),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    history_container(Icons.document_scanner, '9 total scans'),
                    SizedBox(height: 10),
                    history_container(Icons.sick, '4 disease detected')
                  ]),
                  SizedBox(width: 20),
                  Column(children: [
                    history_container(Icons.article_sharp, '3 articles read'),
                    SizedBox(height: 10),
                    history_container(
                        Icons.document_scanner, '4 solutions shared')
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
