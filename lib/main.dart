import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habbitty/Pages/storepage.dart';
import 'package:habbitty/Pages/welcomePage.dart';
// import 'package:habbitty/Pages/signup.dart';
// import 'package:habbitty/Pages/welcomePage.dart';
// ignore: unused_import
import 'package:habbitty/homepage.dart';

// ignore: unused_import
import 'package:habbitty/Pages/createpage.dart';

Color lightOrange = const Color(0xffff8c2e); // Orange 1
Color darkOrange = const Color(0xFFff5417); // Orange 2
Color lightGreen = const Color.fromARGB(255, 29, 192, 62); // Green 1
Color darkGreen = const Color.fromARGB(255, 12, 126, 23); // Green 2
Color navyBlue = const Color(0xFF122663); // Navy 1
Color ownedColor = navyBlue;

List todaysHabitList = [
  // [name,time,icon,isDone]
  [
    0,
    "10x Push Ups",
    "10:00 AM - 10:15 AM",
    Icons.fitness_center_rounded,
    true
  ],
  [1, "Study Math", "12:00 PM - 2:15 PM", Icons.school_rounded, true],
  [
    2,
    "Practice Programming sssssss",
    "3:00 PM - 6:00 PM",
    Icons.code_rounded,
    false
  ],
  [3, "Night Routine", "8:00 PM - 8:15 PM", Icons.bed_rounded, false],
  [4, "Bike Tour", "8:00 PM - 8:15 PM", Icons.pedal_bike_rounded, false],
  [5, "Brushing Teeths", "8:00 PM - 8:15 PM", Icons.bed_rounded, false],
];

List avatarList = [
  // [assetImage,avatarName,isOwned]
  [0, "assets/avatars/Layer1.png", "Jenny", true],
  [1, "assets/avatars/Layer2.png", "Jenny", true],
  [2, "assets/avatars/Layer3.png", "Jenny", false],
  [3, "assets/avatars/Layer4.png", "Jenny", false],
  [4, "assets/avatars/Layer5.png", "Jenny", true],
  [5, "assets/avatars/Layer6.png", "Jenny", false],
  [6, "assets/avatars/Layer7.png", "Jenny", false],
  [7, "assets/avatars/Layer8.png", "Jenny", false],
  [8, "assets/avatars/Layer9.png", "Jenny", false],
];

int credits = 24;
int streak = 4;
int completed = 2;
int toBeCompleted = todaysHabitList.length;
String welcomeMessage = "Good Morning!";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MyTheme(),
        // home: const HomePage(),
        // home: const CreatePage(),
        // home: const StatsPage(),
        // home: const SettingsPage(),
        // home: const CreatePage(),
        // home: const welcomePage(),
        home: const StorePage());
  }

  // ignore: non_constant_identifier_names
  ThemeData MyTheme() {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
        primary: lightOrange,
        secondary: Colors.white,
      ),
      textTheme: GoogleFonts.snigletTextTheme(),
    );
  }
}
