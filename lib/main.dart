import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'package:habbitty/homepage.dart';

// ignore: unused_import
import 'package:habbitty/Pages/createpage.dart';

Color lightOrange = const Color(0xffff8c2e); // Orange 1
Color darkOrange = const Color(0xFFff5417); // Orange 2
Color lightGreen = const Color.fromARGB(255, 29, 192, 62); // Green 1
Color darkGreen = const Color.fromARGB(255, 12, 126, 23); // Green 2
Color navyBlue = const Color(0xFF122663); // Navy 1

int credits = 100;
int streak = 4;
int completed = 3;
int toBeCompleted = 20;
String welcomeMessage = "Good Morning!";

List todaysHabitList = [
  // [name,time,icon,isDone]
  ["10x Push Ups", "10:00 AM - 10:15 AM", Icons.fitness_center_rounded, true],
  ["Study Math", "12:00 PM - 2:15 PM", Icons.school_rounded, false],
  ["Practice Programming", "3:00 PM - 6:00 PM", Icons.code_rounded, false],
  ["Night Routine", "8:00 PM - 8:15 PM", Icons.bed_rounded, false],
];

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
      home: const HomePage(),
      // home: const CreatePage(),
      // home: const StatsPage(),
      // home: const SettingsPage(),
      // home: const CreatePage(),
    );
  }

  // ignore: non_constant_identifier_names
  ThemeData MyTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: lightOrange,
        secondary: Colors.white,
      ),
      textTheme: GoogleFonts.snigletTextTheme()
    );
  }
}