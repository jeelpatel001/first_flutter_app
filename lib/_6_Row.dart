import 'package:flutter/material.dart';

class row extends StatelessWidget{
  const row({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row"),
      ),

      body: Container(
        height: 500,
        color: Colors.black12,
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,   // Default
          // mainAxisAlignment: MainAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,

          crossAxisAlignment: CrossAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center, // Default
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.indigo,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }

}