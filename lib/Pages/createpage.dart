import 'package:flutter/material.dart';

import 'package:habbitty/main.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightOrange,
        title: const Text("Create An Avtivity"),
      ),
    );
  }
}