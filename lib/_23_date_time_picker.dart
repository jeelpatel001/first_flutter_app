import 'package:flutter/material.dart';

class MyDateAndTimePicker extends StatefulWidget {
  const MyDateAndTimePicker({super.key});

  @override
  State<MyDateAndTimePicker> createState() => _MyDateAndTimePickerState();
}

class _MyDateAndTimePickerState extends State<MyDateAndTimePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date & Time Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Select Date',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? datePicked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2004),
                  lastDate: DateTime(2025),
                );

                print(datePicked);
                            },
              child: const Text("Show"),
            ),
            const Divider(
              height: 150,
            ),
            const Text(
              'Select Time',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? timePicker = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );

                if (timePicker != null) {
                  print(timePicker);
                }
              },
              child: const Text("Show"),
            ),
          ],
        ),
      ),
    );
  }
}
