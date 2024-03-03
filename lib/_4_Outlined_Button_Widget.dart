import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatelessWidget {
  const OutlinedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Outlined Button Widget"),
      ),
      body: Center(
        child: OutlinedButton(
          child: const Text("Button"),
          onPressed: () {
            print("Pressed");
          },
          onLongPress: () {
            print("Long Pressed");
          },
        ),
      ),
    );
  }
}
