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
import 'package:portfolio_web/screen/phone_screen/projects_screen.dart';
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
    "I’m Ayush Kumar Singh, a third-year student at Chandigarh University with a passion for developing cross-platform applications. \n\nProficient in various programming languages and frameworks, I am eager to apply my skills to real-world projects and collaborate with innovative teams";
const String projectBackground = "As a dedicated mobile and web developer, I specialize in creating dynamic applications using Flutter. My notable projects include CognitoAI, a voice assistant app for Android and iOS, and Carmania, a car booking app with a polished user interface.\n\nAdditionally, I have developed a Personal Details dApp on Ethereum, showcasing my expertise in smart contracts, Hardhat deployment, and React frontend integration. I am committed to delivering high-quality, user-centric solutions across different platforms.";

List<AppModel> apps = [
  AppModel(
      title: 'About Me',
      color: Colors.white,
      icon: Icons.person,
      screen: const AboutMeScreen()),
  AppModel(
      title: 'Skills',
      color: Colors.white,
      icon: FontAwesomeIcons.diagramProject,
      screen: const Skills()),
  AppModel(
      title: 'Education',
      color: Colors.white,
      icon: FontAwesomeIcons.school,
      screen: const Education()),
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
  AppModel(
      title: 'Email', color: Colors.white, icon: FontAwesomeIcons.envelope),
  AppModel(
      title: 'Experiance',
      color: Colors.white,
      icon: FontAwesomeIcons.user,
      screen: const Experience()),
  AppModel(
      title: 'Projects',
      color: Colors.white,
      icon: FontAwesomeIcons.terminal,
      screen: const ProjectsScreen()),
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
    skillName: "Blockchain",
    colorS: Colors.lightBlueAccent,
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
      "Current CGPA: 7.8",
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
  JobExperience(
    color: Colors.green,
    location: "Bihar, India",
    title: '10th Board',
    company: 'St. Joseph\'s High School',
    startDate: 'March 2019',
    endDate: 'March 2020',
    bulletPoints: [
      'Percentage: 92%',
    ],
  ),
];

final List<JobExperience> jobExperiences = [
  JobExperience(
    color: Colors.black,
    location: "Remote",
    title: 'Flutter Developer Intern',
    company: 'Medoc Health',
    startDate: 'July 2024',
    endDate: 'Present',
    bulletPoints: [
      "Contributed to the design and implementation of the user interface for a web application used in a hospital setting",
      " Integrated various APIs to enhance the functionality and connectivity of the web application",
      " Identified and resolved bugs to improve the overall stability and performance of the application.",
      "Made improvements to the user interface and user experience, ensuring a more intuitive and efficient interaction for hospital staff",
    ],
  ),
];

final List<JobExperience> projects = [
  JobExperience(
    color: Colors.red,
    location: "",
    title: 'Carmania',
    company: '',
    startDate: 'Aug 2022',
    endDate: '',
    bulletPoints: [
      "Developed a cross-platform mobile app for Carmania using Flutter, targeting both iOS and Android devices.",
      "Designed and implemented the user interface for car rentals, providing a seamless and intuitive experience for users.",
      "Categorized vehicles into sections such as Class S, SUV, and Supercar to facilitate easy browsing and selection.",
      "Focused on delivering a visually appealing and responsive UI, ensuring a consistent experience across multiple platforms.",
    ],
  ),
  JobExperience(
    color: Colors.green,
    location: 'location',
    title: 'CognitoAI',
    company: 'company',
    startDate: 'June 2023',
    endDate: 'endDate',
    bulletPoints: [
      "Developed CognitoAI, a friendly voice assistant application for both Android and iOS platforms.",
      "Integrated APIs for ChatGPT and DALL-E, using ChatGPT for text-based interactions and DALL-E for image generation based on user prompts.",
      "Implemented a scrollable chat history view, allowing users to review their conversation while the app is open.",
      "Ensured data persistence only during the app session, with chat history cleared upon app closure.",
    ],
  ),
  JobExperience(
    color: Colors.orange,
    location: 'location',
    title: 'Personal Form on Ethereum',
    company: 'company',
    startDate: 'May 2024',
    endDate: 'endDate',
    bulletPoints: [
      "Developed a decentralized application (dApp) for Ethereum using Solidity for smart contracts.",
      "Hardhat for deployment, and React for the frontend, allowing users to store and retrieve personal details on the blockchain.",
      "Implemented smart contract functionalities to set, get, and clear personal information, with additional features for retrieving details by address (accessible only by the contract owner).",
      "Configured and deployed the smart contract locally with Hardhat, and built a React frontend integrated with Ethers.js and MetaMask for seamless user interaction.",
    ],
  ),
  JobExperience(
    color: Colors.blue,
    location: "",
    title: 'Flask RESTfull Api',
    company: '',
    startDate: 'July 2024',
    endDate: '',
    bulletPoints: [
      "Developed a RESTful API using Flask, SQLAlchemy, and JWT authentication, implementing CRUD operations for stores, items, and tags, and integrating API documentation with Swagger UI.",
      "Configured and managed database migrations with Flask-Migrate, and set up environment variables for secure and flexible configuration.",
      "Utilized Docker for containerization, building and running the Docker image to streamline deployment and scaling.",
      "Handled user registration, authentication, and authorization, ensuring secure access control and admin privileges within the application.",
    ],
  ),
];
