// ignore_for_file: non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:habbitty/Components/boxshadow.dart';
import 'package:habbitty/Pages/editpage.dart';
import 'package:habbitty/homepage.dart';
import 'package:habbitty/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class HabitTile extends StatefulWidget {
  final int ID;
  final String itemTitle;
  final String itemTime;
  final String itemDesc;
  final IconData itemIcon;
  final bool isDone;

  const HabitTile({
    super.key,
    required this.ID,
    required this.itemTitle,
    this.itemDesc = "",
    required this.itemTime,
    required this.itemIcon,
    required this.isDone,
  });

  @override
  State<HabitTile> createState() => _HabitTileState();
}
class _HabitTileState extends State<HabitTile> {
  // @override
  // void initState() {
  //   loadData();
  //   super.initState();
  // }

  // void loadData() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     prefs.getInt("done");
  //   });
  // }

  // void updateData() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   // final updateData = {
  //   //   'id': HabitTile(
  //   //     this.ID: ,
  //   //   ),
  //   // }
  //   setState(() {
  //     prefs.setInt("done", 5);
  //   }); 
  // }

  @override
  Widget build(BuildContext context) {

    Color itemColor = Colors.white;
    Color itemBgColor = Colors.white;
    Color shadowColor = Colors.white;

    if (widget.isDone) {
      itemColor = Colors.white;
      itemBgColor = lightGreen;
      shadowColor = darkGreen;
    } else if (!widget.isDone) {
      itemColor = navyBlue;
      itemBgColor = Colors.white;
      shadowColor = navyBlue;
    }

    return Padding(
      padding: const EdgeInsets.only(top: 20,left: 30, right: 30),
      child: Row(
        children: [
          Expanded(
            child: Container(
              clipBehavior: Clip.hardEdge,
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  MyBoxShadow(shadowColor)
                ]
              ),
              child: Slidable(
                startActionPane: ActionPane(
                  motion: const StretchMotion(),
                  children: [
                    SlidableAction(
                      onPressed:(context) {
                        completed++;
                        setState(() {
                          // final int? completed = prefs.getInt('progressData');
                        });
                        // isDone = true;
                        // saveMyHabit();
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
                      },
                      icon: (Icons.check_circle_outline),
                      backgroundColor: lightGreen,
                      foregroundColor: Colors.white,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        topLeft: Radius.circular(15),
                      ),
                    ),
                    
                    SlidableAction(
                      onPressed:(context) {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditPage(itemTitle: widget.itemTitle, itemIcon: widget.itemIcon, itemTime: widget.itemTime, itemDesc: widget.itemDesc)));
                      },
                      icon: (Icons.edit),
                      backgroundColor: const Color.fromARGB(255, 247, 195, 24),
                      foregroundColor: Colors.white,
                    ),
                    SlidableAction(
                      onPressed:(context) {
                        todaysHabitList.removeAt(widget.ID);
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
                      },
                      icon: (Icons.delete_forever),
                      backgroundColor: Colors.red,
                    ),
                  ]
                ),
                child: Container(
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: itemBgColor,
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(15), 
                                topRight: Radius.circular(15), 
                              ),
                              boxShadow: [MyBoxShadow(shadowColor)],
                              color: itemBgColor,
                            ),
                            child: Icon(
                              widget.itemIcon,
                              size: 40,
                              color: itemColor
                            )
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 200, child: Text(widget.itemTitle, overflow: TextOverflow.ellipsis, style: TextStyle(color: itemColor, fontSize: 20),)),
                            Text(widget.itemTime, style: TextStyle(color: itemColor.withOpacity(0.5))),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
