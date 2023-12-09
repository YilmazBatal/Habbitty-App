import 'package:flutter/material.dart';
import 'package:habbitty/Components/boxshadow.dart';
import 'package:habbitty/Components/dynamictextfield.dart';
import 'package:habbitty/Components/title.dart';
import 'package:habbitty/Pages/welcomePage.dart';
import 'package:habbitty/homepage.dart';
import 'package:habbitty/main.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 225,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              color: lightOrange,
            ),
            child: Center(
              child: Image.asset(
                'assets/images/logoHabbitty.png',
                height: 200,
                width: 200,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  MyTitle("Welcome Back!", lightOrange),
                  DynamicTextField(
                    hintText: "Kullanıcı adı..",
                    controller: TextEditingController(),
                    suffixIcon: Icon(
                      Icons.person_outlined,
                      color: navyBlue,
                    ),
                    onChanged: (value) {
                      // Handle username changes
                    },
                  ),
                  DynamicTextField(
                    hintText: "Parola..",
                    controller: TextEditingController(),
                    suffixIcon: Icon(
                      Icons.password_outlined,
                      color: navyBlue,
                    ),
                    onChanged: (value) {
                      // Handle username changes
                    },
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [MyBoxShadow(navyBlue)]),
                      child: ElevatedButton(
                        onPressed: () {
                          // const HomePage();
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HomePage()));
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            )),
                            splashFactory: NoSplash.splashFactory,
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(lightOrange),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white)),
                        child: const Text(
                          "Sign In",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 30, right: 30),
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [MyBoxShadow(navyBlue)]),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const welcomePage()));
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            )),
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(lightOrange),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white)),
                        child: const Text(
                          "Go Back",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Center(
                      child: Text(
                    "OR",
                    style: TextStyle(color: Colors.black87),
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset("assets/images/google.png"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
