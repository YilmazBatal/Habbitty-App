import 'package:flutter/material.dart';

class TooltipSample extends StatelessWidget {
  final String content;

  const TooltipSample({Key? key, required this.content, required})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color navyBlue = const Color(0xFF122663);
    return Tooltip(
      message: content,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: navyBlue.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
          ),
        ],
        gradient: const LinearGradient(colors: <Color>[
          Color.fromARGB(255, 255, 255, 255),
          Color.fromARGB(255, 255, 255, 255)
        ]),
      ),
      height: 50,
      padding: const EdgeInsets.all(8.0),
      preferBelow: false,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Color(0xFF122663),
      ),
      showDuration: const Duration(milliseconds: 70),
      waitDuration: const Duration(seconds: 1),
      child: Icon(
        Icons.info_outline,
        size: 30,
        color: navyBlue,
      ),
    );
  }
}
