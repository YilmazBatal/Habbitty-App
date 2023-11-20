import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // final logoImg = 'assets/images/youtube-music.png';


    return MaterialApp(
      title: 'Habbity - Tracker',
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(Brightness.light),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 275,
              width: double.infinity,
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
              child: Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 70,),
                child: Column(
                  children: [
                    Row(
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
                    Row(
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              height: 65,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF122663).withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OverflowBox(
                            maxHeight: 20,
                            maxWidth: 20,
                            alignment: Alignment.center,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF122663).withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(

              ),
            ),
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

  Padding QuickPicks(String url, String songName, String artist) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.5, horizontal: 5),
      child: Row(
        children: [
          Image.network(
            url,
            width: 65,
            height: 65,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  songName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),
                ),
                Text(
                  artist,
                  style: TextStyle(
                    color: Color.fromARGB(255, 167, 167, 167),
                    fontSize: 14
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Container Category(String text) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color.fromARGB(20, 255, 255, 255),
        border: Border.all(
          color: Colors.white,
          width: 0.1
        )
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      margin: EdgeInsets.only(left: 5, right: 5),
    );
  }
}

ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
    textTheme: GoogleFonts.snigletTextTheme(baseTheme.textTheme),
  );
}