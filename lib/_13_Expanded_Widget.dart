import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Widget"),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 3, // ignore flex for divide equal
            child: Container(
              width: 70,
              height: 100,
              color: Colors.pinkAccent,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 70,
              height: 100,
              color: Colors.yellowAccent,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 70,
              height: 100,
              color: Colors.greenAccent,
            ),
          )
        ],
      ),
    );
  }
}
