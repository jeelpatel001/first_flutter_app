import 'package:flutter/material.dart';

class MyCallBackFunctions extends StatefulWidget {
  const MyCallBackFunctions({super.key});

  @override
  State<MyCallBackFunctions> createState() => _MyCallBackFunctionsState();
}

class _MyCallBackFunctionsState extends State<MyCallBackFunctions> {
  callBack() {
    print("You called me. when you tap on Button !!!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Callback Functions'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('BUTTON'),
          onPressed: () {
            callBack();
          },
        ),
      ),
    );
  }
}
