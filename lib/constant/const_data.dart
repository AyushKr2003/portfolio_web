import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/models/app_model.dart';
import 'package:portfolio_web/models/color_model.dart';
import 'package:portfolio_web/models/device_model.dart';
import 'package:portfolio_web/models/experiance_model.dart';
import 'package:portfolio_web/models/skills_model.dart';
import 'package:portfolio_web/screen/phone_screen/about.dart';
import 'package:portfolio_web/screen/phone_screen/education_screen.dart';
import 'package:portfolio_web/screen/phone_screen/experiance_screen.dart';
import 'package:portfolio_web/screen/phone_screen/skills_screen.dart';


const double baseHeight = 790;
const double baseWidth = 1440;


List<DeviceModel> devices = [
  DeviceModel(device: Devices.android.samsungGalaxyS20, icon: Icons.android),
  DeviceModel(device: Devices.ios.iPhone13, icon: Icons.apple),
  DeviceModel(device: Devices.ios.iPad12InchesGen4, icon: Icons.tablet),
];

List<ColorModel> colors = [
  ColorModel(
    svgPath: 'assets/backgroundImg/backGreen2.svg',
    gradient: LinearGradient(
      colors: [Colors.yellowAccent.withOpacity(0.3), Colors.greenAccent],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    color: Colors.lightGreenAccent,
  ),
  ColorModel(
    svgPath: 'assets/backgroundImg/backBlue.svg',
    gradient: const LinearGradient(
      colors: [Colors.blueAccent, Colors.black45],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    color: Colors.lightBlue,
  ),
  ColorModel(
    svgPath: 'assets/backgroundImg/backPurple.svg',
    gradient: LinearGradient(
      colors: [Colors.deepPurpleAccent, Colors.purple.withOpacity(0.6)],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    color: Colors.deepPurple,
  ),
  ColorModel(
    svgPath: 'assets/backgroundImg/backPurple.svg',
    gradient: LinearGradient(
      colors: [Colors.purple, Colors.pink.withOpacity(0.5)],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    color: Colors.purple,
  ),
  ColorModel(
    svgPath: 'assets/backgroundImg/backGreen2.svg',
    gradient: const LinearGradient(
      colors: [Colors.yellowAccent, Colors.green],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    color: Colors.green,
  ),
  ColorModel(
    svgPath: 'assets/backgroundImg/backBlue.svg',
    gradient: const LinearGradient(
      colors: [Colors.lightBlueAccent, Colors.indigoAccent],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    color: Colors.indigo,
  ),
];

const String github = 'https://github.com/AyushKr2003';
const String linkedIn =
    'https://www.linkedin.com/in/ayush-kumar-singh-8b6b00249/';
const String resume =
    'https://drive.google.com/file/d/1B9vQrY2dNDWVi7lAdSCVI7mkcIY33AVM/view?usp=sharing';
const String leetcode = 'https://leetcode.com/u/ayushkrsngh2003/';
const String email = 'ayushkrsngh2003@gmail.com';
const String intro =
    "Welcome to My Portfolio website,\nI'm pursuing a B.E in CSE.\n\nI am proficient in various programming languages and frameworks.\nI am eager to apply my skills to real-world projects and collaborate with cross- functional teams to develop innovative software solutions.";

List<AppModel> apps = [
  AppModel(
      title: 'About Me',
      color: Colors.white,
      icon: Icons.person,
      screen: AboutMeScreen()),
  AppModel(title: 'Skills', color: Colors.white, icon: FontAwesomeIcons.diagramProject,screen: Skills()),
  AppModel(
      title: 'Education', color: Colors.white, icon: FontAwesomeIcons.school, screen: Education()),
  AppModel(
      title: 'Github',
      color: Colors.white,
      icon: FontAwesomeIcons.github,
      link: github),
  AppModel(
      title: 'LinkedIn',
      color: Colors.white,
      icon: FontAwesomeIcons.linkedin,
      link: linkedIn),
  AppModel(
      title: 'Resume',
      color: Colors.white,
      icon: FontAwesomeIcons.file,
      link: resume),
  AppModel(
      title: 'LeetCode',
      color: Colors.white,
      icon: FontAwesomeIcons.code,
      link: leetcode),
  AppModel(title: 'Email', color: Colors.white, icon: FontAwesomeIcons.envelope),
  AppModel(
      title: 'Experiance', color: Colors.white, icon: FontAwesomeIcons.user,screen: Experience()),
  AppModel(title: 'Projects', color: Colors.white, icon: FontAwesomeIcons.terminal),
  // AppModel(
  //     title: 'Carmania', color: Colors.white, icon: Icons.ac_unit_outlined),
  // AppModel(title: 'TO-DO', color: Colors.white, icon: Icons.ac_unit_outlined),
];

final List<Color> ballsColors = [
  Colors.lightGreenAccent,
  Colors.lightBlue,
  Colors.deepPurple,
  Colors.purple,
  Colors.green,
  Colors.indigo,
  Colors.red
];

List<SkillsModel> skills = [
  SkillsModel(skillName: "Flutter", colorS: Colors.blue),
  SkillsModel(
    skillName: "Firebase",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Github",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Dart",
    colorS: Colors.blue,
  ),
  SkillsModel(
    skillName: "C/C++",
    colorS: Colors.orange,
  ),
  SkillsModel(
    skillName: "Python",
    colorS: Colors.blue,
  ),
  SkillsModel(
    skillName: "Java",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "HTML/CSS",
    colorS: Colors.orange,
  ),
  SkillsModel(
    skillName: "MySQL",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "REST API",
    colorS: Colors.yellow,
  ),
];

List<SkillsModel> languages = [
  SkillsModel(skillName: "Hindi", colorS: Colors.black),
  SkillsModel(skillName: "English", colorS: Colors.blueGrey),
];

final List<JobExperience> education = [
  JobExperience(
    color: Colors.red,
    location: "Punjab, India",
    title: 'Computer Engineering',
    company: 'Chandigarh University',
    startDate: 'Aug 2022',
    endDate: 'Present',
    bulletPoints: [
      "Currently in the third year of my college!",
    ],
  ),
  JobExperience(
    color: Colors.blue,
    location: "Bihar, India",
    title: '12th Board',
    company: 'St. Joseph\'s High School',
    startDate: 'March 2021',
    endDate: 'March 2022',
    bulletPoints: [
      'Percentage: 82%',
    ],
  ),
];

final List<JobExperience> jobExperiences = [
  JobExperience(
    color: Colors.blue,
    location: "Banglore, India",
    title: 'Full Stack Developer',
    company: 'Stimuler',
    startDate: 'Feb 2023',
    endDate: 'Present',
    bulletPoints: [
      "Actively develop and manage push notifications to engage users effectively.",
      "Successfully set up in-app purchase functionality for both iOS and Android platforms.",
      "Utilize the Provider package for streamlined state management and implement real-time data streams.",
      "Employ Amplitude and Firebase Analytics to track and analyze user behavior, informing data-driven decisions.",
      "The Startup has over 3,00,000 lakh active users",
    ],
  ),
  // Add more job experiences here...
  JobExperience(
    color: Colors.redAccent,
    location: "Remote",
    title: 'Flutter Developer',
    company: 'Perpetuum India',
    startDate: 'Oct 2022',
    endDate: 'Jan 2023',
    bulletPoints: [
      "Establish voice calling functionality using Agora SDK to enable real-time communication within the app.",
      "Implement intricate animations using Rive, enhancing the app's visual appeal and engagement.",
      "Collaborate directly with Stanza Living's CTO, gaining insights into industry best practices and cutting-edge technologies.",
      "Acquire proficiency in server-driven UI setup, optimizing app flexibility and scalability through dynamic configuration.",
    ],
  ),
  JobExperience(
    color: Colors.orangeAccent,
    location: "Remote",
    title: 'App Architecture Intern',
    company: 'Habeato',
    startDate: 'Oct 2021',
    endDate: 'Nov 2021',
    bulletPoints: [
      "Collaborated with founders to develop a HealthifyMe clone, demonstrating strong teamwork and app development skills.",
      "Engineered complex animations to enhance user experience and app visual appeal.",
      "Played an active role in system design processes, contributing to efficient and scalable app architecture.",
    ],
  ),
  JobExperience(
    color: Colors.greenAccent,
    location: "Remote",
    title: 'App Developer',
    company: 'Kylo Apps',
    startDate: 'Sep 2021',
    endDate: 'Oct 2021',
    bulletPoints: [
      "Collaborated as a team member in developing a cryptocurrency wallet, akin to Trust Wallet, showcasing strong teamwork and blockchain app development expertise.",
      "Proficiently integrated REST APIs into the application, enhancing its functionality and connectivity with external services."
    ],
  ),
  JobExperience(
    color: Colors.black,
    location: "Remote",
    title: 'Flutter App Intern',
    company: 'Cogent Web Services',
    startDate: 'Dec 2020',
    endDate: 'June 2021',
    bulletPoints: [
      "Independently developed a Life Simulator game using Flutter from scratch, applying state-of-the-art state management practices to ensure a top-tier user experience.",
      "Leveraged Flutter's robust features to craft an immersive and captivating gameplay experience, demonstrating proficiency in app development.",
      "Successfully implemented Google Ads, in-app purchases, and Hive database for efficient user data storage and monetization strategies.",
      "Generated creative ideas for client pitches, fostering creativity and ensuring the game's entertainment value and thought-provoking nature.",
      "Published the game on the Play Store, achieving over 5,000 downloads, showcasing the ability to deliver a popular and engaging mobile application.",
    ],
  ),
];
