import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/constant/const_data.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          decoration: const BoxDecoration(
            color: Color(0xfff5f4e7)
          ),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
              ),
              Text("Hi, I am Ayush Kumar Singh.", style: GoogleFonts.openSans(fontSize: 20, fontWeight: FontWeight.bold)),
              Text(intro, style: GoogleFonts.openSans(fontSize: 15, fontWeight: FontWeight.w600),),
            ],
          ),
        ),
      ),
    );
  }
}
