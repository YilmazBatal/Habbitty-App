import 'package:flutter/material.dart';
import 'package:habbitty/main.dart';

class CustomAlertDialog {
  final BuildContext context;
  final dynamic contextName;
  final String name_1;
  final dynamic contextName_2;
  final String name_2;

  CustomAlertDialog({
    required this.context,
    required this.contextName,
    required this.name_1,
    required this.contextName_2,
    required this.name_2,
  });

  void showAlertDialog() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        actionsPadding: const EdgeInsets.all(0),
        clipBehavior: Clip.hardEdge,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        shadowColor: navyBlue, // Assuming navyBlue is defined elsewhere
        elevation: 20,
        actions: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: navyBlue.withOpacity(0.5), width: 1),
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: navyBlue.withOpacity(0.5),
                    backgroundColor: Colors.transparent,
                  ),
                  onPressed: () => Navigator.pop(context, contextName),
                  child: Center(
                    child: Text(
                      name_1,
                      style: TextStyle(color: navyBlue, fontSize: 20),
                    ),
                  ),
                ),
                const Divider(
                  height: 0,
                  color:Colors.grey,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: navyBlue.withOpacity(0.5),
                    backgroundColor: Colors.transparent,
                  ),
                  onPressed: () => Navigator.pop(context, contextName_2),
                  
                  child: Center(
                    child: Text(
                      name_2,
                      style: TextStyle(color: navyBlue, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
