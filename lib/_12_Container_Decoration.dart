import 'package:flutter/material.dart';

class ContainerDecoration extends StatelessWidget {
  const ContainerDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Decoration"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              border: Border.all(
                  width: 1,
                  color: Colors.black26,
                  strokeAlign: BorderSide.strokeAlignCenter),
              boxShadow: const [
                BoxShadow(
                    spreadRadius: 1, blurRadius: 20, color: Colors.black26),
              ]),
          child: const Center(
            child: Text(
              "Jeel Patel",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
