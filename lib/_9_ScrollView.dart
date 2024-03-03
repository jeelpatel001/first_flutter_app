import 'package:flutter/material.dart';

class MyScrollView extends StatelessWidget {
  const MyScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scroll View"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              margin: const EdgeInsets.all(5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Container(
                    width: 200,
                    color: Colors.pink,
                    child: Center(child: Text("Container 1")),
                  ),
                  Container(
                    width: 200,
                    color: Colors.red,
                    child: Center(child: Text("Container 2")),
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange,
                    child: Center(child: Text("Container 3")),
                  ),
                ]),
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.all(5),
              color: Colors.lightBlue,
              child: const Center(
                  child: Text(
                "Container 1",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              )),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.all(5),
              color: Colors.lime,
              child: const Center(
                  child: Text(
                "Container 2",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              )),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.all(5),
              color: Colors.lightGreen,
              child: const Center(
                  child: Text(
                "Container 3",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
