import 'package:flutter/material.dart';
import 'package:habbitty/Components/boxshadow.dart';
import 'package:habbitty/Components/dynamictextfield.dart';
import 'package:habbitty/Components/title.dart';
import 'package:habbitty/Pages/signin.dart';
import 'package:habbitty/Pages/welcomePage.dart';
import 'package:habbitty/main.dart';

// ignore: camel_case_types
class signup extends StatelessWidget {
  const signup({super.key});

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
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    MyTitle("Sign Up in a few steps!", lightOrange),
                    DynamicTextField(
                      hintText: "Username",
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
                      hintText: "E-Mail",
                      controller: TextEditingController(),
                      suffixIcon: Icon(
                        Icons.mail_outlined,
                        color: navyBlue,
                      ),
                      onChanged: (value) {
                        // Handle username changes
                      },
                    ),
                    DynamicTextField(
                      hintText: "Password",
                      controller: TextEditingController(),
                      suffixIcon: Icon(
                        Icons.password_outlined,
                        color: navyBlue,
                      ),
                      onChanged: (value) {
                        // Handle username changes
                      },
                    ),
                    DynamicTextField(
                      hintText: "Password Confirmation",
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
                            onPressed: () {},
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
                              "Sign Up",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        )),
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
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const welcomePage()));
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              )),
                              splashFactory: NoSplash.splashFactory,
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor:
                                  MaterialStateProperty.all(lightOrange),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          child: const Text(
                            "Return",
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
                      onTap: () {
                        const Signin();
                      },
                      child: Image.asset("assets/images/google.png"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

//   ElevatedButton buttonElements(
//       BuildContext context, String textName, routeName) {
//     return ElevatedButton(
//       style: ButtonStyle(
//           elevation: MaterialStateProperty.all(0),
//           backgroundColor: MaterialStateProperty.all(lightOrange),
//           foregroundColor: MaterialStateProperty.all(Colors.white),
//           minimumSize: MaterialStateProperty.all()
//         ),
//       onPressed: () {
//         Navigator.of(context)
//             .push(MaterialPageRoute(builder: (context) => routeName));
//       },
//       child: Text(
//         textName,
//         style: TextStyle(color: Colors.white),
//       ),
//     );
//   }
//
}
