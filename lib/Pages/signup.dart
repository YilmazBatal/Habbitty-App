import 'package:flutter/material.dart';
import 'package:habbitty/Components/boxshadow.dart';
import 'package:habbitty/Components/dynamictextfield.dart';
import 'package:habbitty/Components/title.dart';
import 'package:habbitty/Pages/signin.dart';
import 'package:habbitty/Pages/welcomePage.dart';
import 'package:habbitty/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: camel_case_types
class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();
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
                      controller: usernameController,
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
                      controller: emailController,
                      suffixIcon: Icon(
                        Icons.mail_outlined,
                        color: navyBlue,
                      ),
                      onChanged: (value) {
                        // Handle email changes
                      },
                    ),

                    DynamicTextField(
                      hintText: "Password",
                      controller: passwordController,
                      suffixIcon: Icon(
                        Icons.lock_outline,
                        color: navyBlue,
                      ),
                      onChanged: (value) {
                        // Handle password changes
                      },
                    ),

                    DynamicTextField(
                      hintText: "Password Confirmation",
                      controller: confirmPasswordController,
                      suffixIcon: Icon(
                        Icons.password_outlined,
                        color: navyBlue,
                      ),
                      onChanged: (value) {
                        // Handle password confirmation changes
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
                          boxShadow: [MyBoxShadow(navyBlue)],
                        ),
                        child: ElevatedButton(
                          onPressed: () async {
                            // Kullanıcıyı kaydet
                            bool success = await saveUserCredentials(
                              usernameController.text,
                              emailController.text,
                              passwordController.text,
                              confirmPasswordController.text, // Ekledik
                            );

                            if (success) {
                              // Kayıt başarılıysa giriş sayfasına yönlendir
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Signin()));
                            } else {
                              // Kayıt başarısızsa hata mesajı göster
                              // ignore: use_build_context_synchronously
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Error'),
                                    content: const Text(
                                        'Failed to sign up. Please check your information.'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            splashFactory: NoSplash.splashFactory,
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(lightOrange),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),

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
                    // GestureDetector(
                    //   onTap: () {
                    //     const Signin()
                    //   },
                    //   child: Image.asset("assets/images/google.png"),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool> saveUserCredentials(String username, String email,
      String password, String confirmPassword) async {
    try {
      if (password == confirmPassword) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('username', username);
        prefs.setString('email', email);
        prefs.setString('password', password);
        print("name: $username");
        return true;
      } else {
        print('Password and confirm password do not match.');
        return false;
      }
    } catch (e) {
      print('Failed to save user credentials: $e');
      return false;
    }
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
