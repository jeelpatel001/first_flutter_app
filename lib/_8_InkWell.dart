import 'package:flutter/material.dart';

class inkwell extends StatelessWidget {
  const inkwell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("InkWell"),
      ),
      body: Center(
        child: InkWell(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.black12,
          ),
          onTap: () {
            print("Pressed Container");
          },
          onLongPress: () {
            print("Long Pressed Container");
          },
          onDoubleTap: () {
            print("Double Tapped on Container");
          },
        ),
      ),
    );
  }
}
