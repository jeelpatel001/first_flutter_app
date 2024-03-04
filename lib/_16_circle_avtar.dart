import 'package:flutter/material.dart';

class MyCircleAvtar extends StatelessWidget {
  const MyCircleAvtar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avtar'),
      ),
      body: const Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image/mesqure.png'),
                backgroundColor: Colors.yellow,
                radius: 80,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image/user.png'),
                backgroundColor: Colors.yellow,
                radius: 80,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("Hello,"),
                    Text(
                      "Jeel Patel",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
