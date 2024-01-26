import 'package:flutter/material.dart';
import 'package:habbitty/Components/boxshadow.dart';
import 'package:habbitty/main.dart';

class DynamicTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String) onChanged;
  final Icon suffixIcon;

  // ignore: use_key_in_widget_constructors
  const DynamicTextField(
      {required this.hintText,
      required this.controller,
      this.keyboardType = TextInputType.text,
      required this.onChanged,
      required this.suffixIcon});

  @override
  // ignore: library_private_types_in_public_api
  _DynamicTextFieldState createState() => _DynamicTextFieldState();
}

class _DynamicTextFieldState extends State<DynamicTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30, top: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [MyBoxShadow(navyBlue)],
        ),
        child: TextField(
          style: TextStyle(fontSize: 20, color: navyBlue),
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            suffixIcon: widget.suffixIcon,
            hintText: widget.hintText,
            filled: true,
            fillColor: Colors.white,
            border: const OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(style: BorderStyle.none),
              borderRadius: BorderRadius.circular(15.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(style: BorderStyle.none),
              borderRadius: BorderRadius.circular(15.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(15.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(15.0),
            ),
            contentPadding: const EdgeInsets.all(12.0),
          ),
        ),
      ),
    );
  }
}
