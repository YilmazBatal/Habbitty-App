import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:habbitty/Components/boxshadow.dart';
import 'package:habbitty/main.dart';

// ignore: must_be_immutable
class HabitTile extends StatelessWidget {
  final String itemTitle;
  final String itemTime;
  final IconData itemIcon;
  bool isDone;

  HabitTile({
    super.key,
    required this.itemTitle,
    required this.itemTime,
    required this.itemIcon,
    required this.isDone,
  });

  @override
  Widget build(BuildContext context) {

    Color itemColor = Colors.white;
    Color itemBgColor = Colors.white;
    Color shadowColor = Colors.white;

    if (isDone) {
      itemColor = Colors.white;
      itemBgColor = lightGreen;
      shadowColor = darkGreen;
    } else if (!isDone) {
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
              height: 75,
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
                        isDone = true;
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
                        showTimePicker(context: context, initialTime: const TimeOfDay(hour: 20, minute: 20));
                      },
                      icon: (Icons.edit),
                      backgroundColor: const Color.fromARGB(255, 247, 195, 24),
                      foregroundColor: Colors.white,
                    ),
                    SlidableAction(
                      onPressed:(context) {
                        todaysHabitList.removeAt(0);
                        
                      }, icon: (Icons.delete_forever),
                      backgroundColor: Colors.red,
                    ),
                  ]
                ),
                child: Container(
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: itemBgColor,
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(15), 
                                topRight: Radius.circular(15), 
                              ),
                              boxShadow: [MyBoxShadow(shadowColor)],
                              color: itemBgColor,
                            ),
                            child: Icon(
                              itemIcon,
                              size: 50,
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
                            SizedBox(width: 250, child: Text(itemTitle, overflow: TextOverflow.ellipsis, style: TextStyle(color: itemColor, fontSize: 20),)),
                            Text(itemTime, style: TextStyle(color: itemColor.withOpacity(0.5))),
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