import 'package:flutter/material.dart';

class MyDateAndTime extends StatefulWidget {
  const MyDateAndTime({super.key});

  @override
  State<MyDateAndTime> createState() => _MyDateAndTimeState();
}

class _MyDateAndTimeState extends State<MyDateAndTime> {
  // var shortTime = t;

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: const Text("get Current Date & Time"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Current",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            Text(
              "Time : ${time.hour}",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              "Day : ${time.day}",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              "Month : ${time.month}",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              "Year : ${time.year}",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 25),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text("REFRESH"),
            )
          ],
        ),
      ),
    );
  }
}
