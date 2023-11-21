import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    Color lightOrange = const Color(0xffff9f1c); // Orange 1
    Color darkOrange = const Color(0xFFff5417); // Orange 1
    double screenWidth = MediaQuery.of(context).size.width;    // Gives the width
    double screenheight = MediaQuery.of(context).size.height;  // Gives the height

    const orangeHeader = 320.0; // 280.0

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
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter, end: Alignment.bottomCenter,
                  colors: [
                    lightOrange,
                    darkOrange,
                  ],
                ),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40),)
              ),
              // Header Rows parent
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 65,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
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
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 25),
                            child: HabbittyBox(
                              65.0,
                              Colors.white,
                              const Center(
                                // children: [
                                
                                // ],
                              )
                            )
                          ),
                        ),
                      ],
                    ),
                    // Overflowing Progress Bar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        HabbittyBox(
                          50.0,
                          Colors.white,
                          Center(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            // mainAxisSize: MainAxisSize.
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Progress",
                                          textAlign: TextAlign.center,
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                            color: Color(0Xff122663),
                                            fontSize: 16
                                          ),
                                        ),
                                        Text(
                                          "10/10",
                                          textAlign: TextAlign.center,
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                            color: Color(0Xff122663),
                                            fontSize: 16
                                          ),
                                        ),
                                      ],
                                    ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 8,
                                          // ClipRRect gives border to child
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                            child: GradientProgressIndicator(
                                              gradient: LinearGradient(
                                                colors: [
                                                  darkOrange,
                                                  lightOrange,
                                                ],
                                              ),
                                            ),
                                          )
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 5,),
                child: Column(
                  children: [
                    // Radio Row
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12.5, bottom: 12.5),
                            child: HabbittyBox(
                              32.5,
                              Colors.white,
                              const Center(
                                // children: [
                                
                                // ],
                              )
                            )
                          ),
                        ),
                      ],
                    ),
                    // Search Bar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(500)),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.search, size: 10,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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

  // Function to call Boxes - Takes 3 Param
  Expanded HabbittyBox(double boxHeight, Color boxColor, Center myChild) {
    return Expanded(
      child: Container(
        height: boxHeight,
        width: double.infinity,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF122663).withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
            ),
          ],
        ),
        child: myChild,
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