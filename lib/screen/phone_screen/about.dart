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
                backgroundImage: AssetImage('assets/profile_photo.png'),
              ),
              const SizedBox(height: 5),
              Text("Welcome to my portfolio!", style: GoogleFonts.openSans(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              Text(intro, style: GoogleFonts.openSans(fontSize: 15, fontWeight: FontWeight.w600),),
              const SizedBox(height: 5),
              Text(projectBackground, style: GoogleFonts.openSans(fontSize: 15, fontWeight: FontWeight.w600),),
            ],
          ),
        ),
      ),
    );
  }
}
