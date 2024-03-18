import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDateAndTimeFormat extends StatefulWidget {
  const MyDateAndTimeFormat({super.key});

  @override
  State<MyDateAndTimeFormat> createState() => _MyDateAndTimeFormatState();
}

class _MyDateAndTimeFormatState extends State<MyDateAndTimeFormat> {
  // First Add dev_dependencies for intl library
  // Date and Time format package link : https://pub.dev/packages/intl

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Format Date & Time"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Only Time : ${DateFormat('Hms').format(time)}",
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              "Time : ${DateFormat('jms').format(time)}",
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              "Day Short Name : ${DateFormat('E').format(time)}",
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              "Day Full Name : ${DateFormat('EEEE').format(time)}",
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              "Mont Short Name : ${DateFormat('MMM').format(time)}",
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              "Month Full Name: ${DateFormat('MMMM').format(time)}",
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              "Month and Date: ${DateFormat('MMMMd').format(time)}",
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              "Year : ${time.year}",
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


// Many Formats given bellow

// static const String ABBR_MONTH = 'MMM';
// static const String DAY = 'd';
// static const String ABBR_WEEKDAY = 'E';
// static const String WEEKDAY = 'EEEE';
// static const String ABBR_STANDALONE_MONTH = 'LLL';
// static const String STANDALONE_MONTH = 'LLLL';
// static const String NUM_MONTH = 'M';
// static const String NUM_MONTH_DAY = 'Md';
// static const String NUM_MONTH_WEEKDAY_DAY = 'MEd';
// static const String ABBR_MONTH_DAY = 'MMMd';
// static const String ABBR_MONTH_WEEKDAY_DAY = 'MMMEd';
// static const String MONTH = 'MMMM';
// static const String MONTH_DAY = 'MMMMd';
// static const String MONTH_WEEKDAY_DAY = 'MMMMEEEEd';
// static const String ABBR_QUARTER = 'QQQ';
// static const String QUARTER = 'QQQQ';
// static const String YEAR = 'y';
// static const String YEAR_NUM_MONTH = 'yM';
// static const String YEAR_NUM_MONTH_DAY = 'yMd';
// static const String YEAR_NUM_MONTH_WEEKDAY_DAY = 'yMEd';
// static const String YEAR_ABBR_MONTH = 'yMMM';
// static const String YEAR_ABBR_MONTH_DAY = 'yMMMd';
// static const String YEAR_ABBR_MONTH_WEEKDAY_DAY = 'yMMMEd';
// static const String YEAR_MONTH = 'yMMMM';
// static const String YEAR_MONTH_DAY = 'yMMMMd';
// static const String YEAR_MONTH_WEEKDAY_DAY = 'yMMMMEEEEd';
// static const String YEAR_ABBR_QUARTER = 'yQQQ';
// static const String YEAR_QUARTER = 'yQQQQ';
// static const String HOUR24 = 'H';
// static const String HOUR24_MINUTE = 'Hm';
// static const String HOUR24_MINUTE_SECOND = 'Hms';
// static const String HOUR = 'j';
// static const String HOUR_MINUTE = 'jm';
// static const String HOUR_MINUTE_SECOND = 'jms';