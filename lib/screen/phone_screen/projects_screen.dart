import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/constant/const_data.dart';
import 'package:portfolio_web/models/experiance_model.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Center(
            child: Icon(
              FontAwesomeIcons.computer,
              size: 100,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...List.generate(projects.length, (index) {
            JobExperience project = projects[index];
            return ExpansionTile(
              tilePadding: const EdgeInsets.all(20),
              childrenPadding: const EdgeInsets.all(10),
              leading: Container(
                width: 2,
                height: 100,
                color: project.color,
              ),
              title: Text(
                project.title,
                style: GoogleFonts.inter(fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  '${project.startDate} ',
                  style: GoogleFonts.inter(fontSize: 13, color: Colors.grey),
                ),
              ),
              children: project.bulletPoints.map((bulletPoint) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
                  title: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          bulletPoint,
                          style: GoogleFonts.inter(
                            fontSize: 12,
                          ),
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            );
          })
        ],
      ),
    );
  }
}
