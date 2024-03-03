import 'package:flutter/material.dart';

class column extends StatelessWidget {
  const column({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column"),
      ),
      body: Container(
        width: 300,
        color: Colors.greenAccent,
        child: Column(
          
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.start, // Default
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          // crossAxisAlignment: CrossAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,  // Default
          // crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.blueGrey,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.grey,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.black54,
            )
          ],
        ),
      ),
    );
  }
}
