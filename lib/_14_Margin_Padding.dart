import 'package:flutter/material.dart';

class MarginAndPadding extends StatelessWidget {
  const MarginAndPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Margin And Padding"),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        color: Colors.greenAccent,
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Text("Hello Jeel"),
        ),
      ),
    );
  }
}