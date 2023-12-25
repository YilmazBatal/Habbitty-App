import 'package:flutter/material.dart';

import 'package:habbitty/Components/boxshadow.dart';
import 'package:habbitty/Components/dynamictextfield.dart';
import 'package:habbitty/Components/selectIcon.dart';
import 'package:habbitty/Components/title.dart';
import 'package:habbitty/Components/togglebutton.dart';

import 'package:habbitty/main.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: lightOrange,
        title: const Text(
          "Create An Avtivity",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  MyTitle("Activity Category", navyBlue),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: MyToggleButtons(),
                  ),
                  MyTitle("Activity Name", navyBlue),
                  DynamicTextField(
                    hintText: "Water Plants",
                    controller: TextEditingController(),
                    suffixIcon: Icon(
                      Icons.edit_note_rounded,
                      color: navyBlue,
                    ),
                    onChanged: (value) {
                      // Handle username changes
                    },
                  ),
                  // MyTitle("Tag Name"),
                  // TagField(),
                  MyTitle("Activity Notes", navyBlue),
                  DynamicTextField(
                    hintText: "Neighbor's plants, Only her cactus",
                    controller: TextEditingController(),
                    suffixIcon: Icon(
                      Icons.notes_rounded,
                      color: navyBlue,
                    ),
                    onChanged: (value) {
                      // Handle username changes
                    },
                  ),
                  MyTitle("Select Icon", navyBlue),
                  const Padding(
                    padding: EdgeInsets.only(top: 15.0, left: 30, right: 30),
                        child: selectIcon(),
                    // child: Container(
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(15),
                    //     boxShadow: [MyBoxShadow(navyBlue)],
                    //   ),
                    //   // child: Padding(
                    //   //   padding: const EdgeInsets.all(10.0),
                    //   //   child: Column(
                    //   //     children: [
                    //   //       SingleChildScrollView(
                    //   //         scrollDirection: Axis.horizontal,
                    //   //         child: Row(
                    //   //           children: [
                    //   //             SelectIcon(
                    //   //                 const Color(0xFFff595e), Icons.school),
                    //   //             SelectIcon(const Color(0xFFffca3a),
                    //   //                 Icons.fitness_center_outlined),
                    //   //             SelectIcon(const Color(0xFF8ac926),
                    //   //                 Icons.shopping_bag),
                    //   //             SelectIcon(const Color(0xFF1982c4),
                    //   //                 Icons.pedal_bike),
                    //   //             SelectIcon(const Color(0xFF6a4c93),
                    //   //                 Icons.code_rounded),
                    //   //             SelectIcon(
                    //   //                 const Color(0xFF2ec4b6), Icons.school),
                    //   //           ],
                    //   //         ),
                    //   //       ),
                    //   //     ],
                    //   //   ),
                    //   // ),
                    ),
                  // SelectTime
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 40, left: 30, right: 30),
                      child: Container(
                        width: double.infinity,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [MyBoxShadow(navyBlue)]),
                        child: ElevatedButton(
                          onPressed: () {
                            TimePickerDialog(initialTime: TimeOfDay(hour: 00, minute: 00));
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
                            "Set Activity Time",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )),
                  // Ready To Go
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
                                  MaterialStateProperty.all(navyBlue),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          child: const Text(
                            "Ready To Go",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Padding SelectIcon(Color bgColor, IconData myIconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(bgColor),
              foregroundColor: MaterialStateProperty.all(Colors.white)),
          onPressed: () {},
          child: SizedBox(
            width: 30,
            height: 55,
            child: Icon(
              myIconData,
              size: 30,
            ),
          )),
    );
  }
}
