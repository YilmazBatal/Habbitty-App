import 'package:flutter/material.dart';
import 'package:habbitty/main.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightOrange,
        title: const Text("Privacy Policy"),
      ),
    );
  }
}