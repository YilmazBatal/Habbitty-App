import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habbitty/homepage.dart';

import 'package:habbitty/Pages/createpage.dart';

Color lightOrange = const Color(0xffff8c2e); // Orange 1
Color darkOrange = const Color(0xFFff5417); // Orange 2
Color lightGreen = Color.fromARGB(255, 29, 192, 62); // Green 1
Color darkGreen = Color.fromARGB(255, 12, 126, 23); // Green 2
Color navyBlue = const Color(0xFF122663); // Navy 1

int credits = 100;
int streak = 4;
int completed = 3;
int toBeCompleted = 20;
String welcomeMessage = "Good Morning!";

List<String> myActivityNames = [
  "10 Push Up",
  "Study Math",
  "Practice Programming",
];

List<String> myActivityTimes = [
  "10:00 - 10:15",
  "13:00 - 14:30",
  "16:00 - 19:00",
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
      theme: _buildTheme(Brightness.light),
      // home: const HomePage(),
      // home: const CreatePage(),
      // home: const StatsPage(),
      // home: const SettingsPage(),
      home: const CreatePage(),
    );
  }
}

// ignore: non_constant_identifier_names
BoxShadow MyBoxShadow(Color shadowColor) {
  return BoxShadow(
    color: shadowColor.withOpacity(0.5),
    spreadRadius: 3,
    blurRadius: 5,
  );
}

class DynamicTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String) onChanged;

  // ignore: use_key_in_widget_constructors
  const DynamicTextField({
    required this.hintText,
    required this.controller,
    this.keyboardType = TextInputType.text,
    required this.onChanged,
  });

  @override
  // ignore: library_private_types_in_public_api
  _DynamicTextFieldState createState() => _DynamicTextFieldState();
}
class _DynamicTextFieldState extends State<DynamicTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30, top: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [MyBoxShadow(navyBlue)],
        ),
        child: TextField(
          style: TextStyle(fontSize: 20, color: navyBlue),
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            hintText: widget.hintText,
            filled: true,
            fillColor: Colors.white,
            border: const OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(style: BorderStyle.none),
              borderRadius: BorderRadius.circular(15.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(style: BorderStyle.none),
              borderRadius: BorderRadius.circular(15.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(15.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(15.0),
            ),
            contentPadding: const EdgeInsets.all(12.0),
          ),
        ),
      ),
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