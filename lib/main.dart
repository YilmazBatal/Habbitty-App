import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;    // Gives the width
    double screenheight = MediaQuery.of(context).size.height;  // Gives the height

    const orangeHeader = 280.0; // 280.0

    return MaterialApp(
      title: 'Habbity - Tracker',
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(Brightness.light),
      home: Scaffold(
        body: Column(
          children: [
            // Header
            Container(
              height: orangeHeader, // 275 Value
              // width: double.infinity,
              // Orange Gradient
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter, end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffff9f1c),
                    Color(0xFFff5417),
                  ],
                ),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50),)
              ),
              // Header Rows parent
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 70,),
                child: Column(
                  // Header Rows
                  children: [
                    // Hamburger Menu & Welcome Text
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.menu, size: 40, color: Colors.white,),
                        Text("Good Morning!",
                          style: TextStyle(
                            color: Colors.white, fontSize: 28
                          ),
                        )
                      ],
                    ),
                    // Money & Date Label
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.monetization_on, size: 28, color: Colors.white70,),
                            Text("350",
                              style: TextStyle(
                                color: Colors.white70, fontSize: 24
                              ),
                            ),
                          ],
                        ),
                        Text("29th Aug",
                          style: TextStyle(
                            color: Colors.white70, fontSize: 24
                          ),
                        )
                      ],
                    ),
                    // Mini Calendar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                            child: Container(
                              height: 65,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF122663).withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    // Overflowing Progress Bar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF122663).withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Content
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: orangeHeader * 50 / 100, // Orange Header + %50
                  ),
                  Text("---------------------------------------------")
                ],
              ),
            ),
            // Nav Menu / Bottom Bar
            Container(
              height: 70,
              width: double.infinity,
              color: const Color.fromARGB(255, 33, 33, 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home,color: Colors.white, size: 35,),
                      Text("Home", style: TextStyle(
                        color: Colors.white,
                      ),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.play_circle_fill,color: Colors.white, size: 35,),
                      Text("Samples", style: TextStyle(
                        color: Colors.white,
                      ),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.explore,color: Colors.white, size: 35,),
                      Text("Explore", style: TextStyle(
                        color: Colors.white,
                      ),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.library_add,color: Colors.white, size: 35,),
                      Text("Library", style: TextStyle(
                        color: Colors.white,
                      ),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home,color: Colors.white, size: 35,),
                      Text("Upgrade", style: TextStyle(
                        color: Colors.white,
                      ),),
                    ],
                  ),
                  
                ],
              ),
            ),
          ]
        )
      )
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