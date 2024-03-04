import 'package:flutter/material.dart';

class MyCustomFonts extends StatelessWidget {
  const MyCustomFonts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Fonts'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Normal Fonts',
            ),
            Text(
              'Jeel Patel',
              style: TextStyle(
                fontFamily: 'MyCustomFont',
                fontSize: 30,
              ),
            ),
            Divider(
              height: 20,
              thickness: 1,
            ),
            Text(
              'New Custom Fonts',
            ),
            Text(
              'Jeel Patel',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
