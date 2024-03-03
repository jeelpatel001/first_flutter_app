import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Elevated Button"),
      ),

      body: ElevatedButton(
        child: const Text("Button"),
        onPressed: () {
          print("Botton Pressed");
        },
        onLongPress: () {
          print("Long Pressed");
        },
      ),
    );
  }
}
