import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget history_container(IconData icon, String text){
  return Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(icon, size: 40, color: Colors.green),
                                  SizedBox(height: 10),
                                  Text('$text',
                                  style: GoogleFonts.nunito(
                                    fontSize: 15,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    
                                  )),
                                ]
                              ),
                              width: 150, height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFEEF7E8),
                              ),
                            );
}