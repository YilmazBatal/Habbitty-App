// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:habbitty/Components/title.dart';
import 'package:habbitty/Pages/signin.dart';
import 'package:habbitty/Pages/signup.dart';
// import 'package:habbitty/homepage.dart';
import 'package:habbitty/main.dart';
import 'package:flutter/material.dart';
//import 'package:google_sign_in/google_sign_in.dart';

void main() => runApp(const welcomePage());

// ignore: camel_case_types
class welcomePage extends StatelessWidget {
  const welcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: const MyApp().MyTheme(),
      home: const Scaffold(
        body: MyAnimation(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyClipPath extends AnimatedWidget {
  final Animation<double> animation;

  const MyClipPath(this.animation, {super.key}) : super(listenable: animation);

  final Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: lightOrange),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Image(
                    height: 230,
                    image: AssetImage("assets/images/logoHabbitty.png"),
                  ),
                ),
                Column(
                  children: [
                    MyTitle('Welcome To Habbitty!', Colors.white),
                    const Text(
                        "For better you, start your journey right now or sign in to your account.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15.0, color: Colors.white)),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buttonElements(context, "Sign In", () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Signin()));
                      }),

                      const SizedBox(
                        height: 10,
                      ),
                      buttonElements(context, "Sign Up", const signup()),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(
                          child: Text(
                        "OR",
                        style: TextStyle(color: Colors.white70),
                      )),
                      const SizedBox(
                        height: 10,
                      ),
                      // GestureDetector(
                      //   onTap: () {
                      //     const Signin();
                      //   },
                      //   child: Image.asset("assets/images/google.png"),
                      // ),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(children: [
                    Positioned(
                      bottom: 0,
                      right: animation.value,
                      child: ClipPath(
                        clipper: BottomWaveClipper(),
                        child: Opacity(
                          opacity: 1,
                          child: Container(
                            color: backgroundColor,
                            width: 1000,
                            height: 200,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: animation.value,
                      child: ClipPath(
                        clipper: BottomWaveClipper(),
                        child: Opacity(
                          opacity: 0.5,
                          child: Container(
                            color: backgroundColor,
                            width: 1000,
                            height: 200,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  ElevatedButton buttonElements(
      BuildContext context, String textName, routeName) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          minimumSize: Size(MediaQuery.of(context).size.width * 0.85,
              50), // Ekranın %85'i kadar genişlik
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => routeName));
        },
        child: Text(
          textName,
          style: TextStyle(color: navyBlue),
        ));
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, 40.0);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 40.0);

    for (int i = 0; i < 10; i++) {
      if (i % 2 == 0) {
        path.quadraticBezierTo(
            size.width - (size.width / 16) - (i * size.width / 8),
            0.0,
            size.width - ((i + 1) * size.width / 8),
            size.height - 160);
      } else {
        path.quadraticBezierTo(
            size.width - (size.width / 16) - (i * size.width / 8),
            size.height - 120,
            size.width - ((i + 1) * size.width / 8),
            size.height - 160);
      }
    }

    path.lineTo(0.0, 40.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class MyAnimation extends StatefulWidget {
  const MyAnimation({super.key});

  @override
  _MyAnimationState createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 6), vsync: this)
          ..repeat();

    animation = Tween<double>(begin: -500, end: 0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyClipPath(animation);
  }
}

// class SignInDemo extends StatefulWidget {
//   @override
//   State createState() => SignInDemoState();
// }

// class SignInDemoState extends State<SignInDemo> {
//   GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

//   _handleSignIn() async {
//     try {
//       await _googleSignIn.signIn();
//     } catch (error) {
//       print(error);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Google Sign-In Demo'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: _handleSignIn,
//           child: Text('Sign in with Google'),
//         ),
//       ),
//     );
//   }
// }
