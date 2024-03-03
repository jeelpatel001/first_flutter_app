import 'package:flutter/material.dart';

class ListViewStaticData extends StatelessWidget {
  const ListViewStaticData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView (Static Data)"),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 150,
            color: Colors.orange,
            child: const Text(
              "Jeel",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 150,
            color: Colors.orange,
            child: const Text(
              "Tej",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 150,
            color: Colors.orange,
            child: const Text(
              "Krish",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 150,
            color: Colors.orange,
            child: const Text(
              "Het",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 150,
            color: Colors.orange,
            child: const Text(
              "Smit",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
