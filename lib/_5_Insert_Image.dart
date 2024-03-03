import 'package:flutter/material.dart';

class InsertImage extends StatelessWidget {
  const InsertImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Insert Image"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 200,
          color: Colors.pink.shade50,
          child: Image.asset('assets/image/me.png'),
        ),
      ),
    );
  }
}
