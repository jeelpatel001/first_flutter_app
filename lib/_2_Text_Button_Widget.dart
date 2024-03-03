import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key});

  void printDisplay() {
    print("Button Clicked");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Button Widget"),
      ),
      body: Center(
        child: TextButton(
          child: Text("Button"),
          onPressed: () {
            printDisplay();
          },
          onLongPress: () {
            print("Long Pressed");
          },
        ),
      ),
    );
  }
}
