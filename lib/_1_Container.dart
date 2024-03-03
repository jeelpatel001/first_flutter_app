import 'package:flutter/material.dart';

class ContainerOrCenter extends StatelessWidget {
  const ContainerOrCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
      ),

      /*-------Container or Center Widget-------*/
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
        child: Container(
          width: double.maxFinite,
          height: 200,
          decoration: const BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0)),
          ),
          child: const Center(
            child: Text(
              "Jeel Patel",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
