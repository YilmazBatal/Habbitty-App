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

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(Brightness.light),
      home: const HomePage(),
      // home: const CreatePage(),
      // home: const StatsPage(),
      // home: const SettingsPage(),
      // home: const CreatePage(),
    );
  }
}
// Google Font Library
ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
    textTheme: GoogleFonts.snigletTextTheme(baseTheme.textTheme),
  );
}