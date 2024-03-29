import 'package:first_flutter_app/_24_grid_view_layout.dart';
import 'package:first_flutter_app/_25_callback_functions.dart';
import 'package:first_flutter_app/_26_custom_widgets.dart';
import 'package:flutter/material.dart';

import 'color_schemes.g.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jeel Patel',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),

      // home: const MyHomePage(title: "Home Page"),

      // home: const ContainerOrCenter(),
      // home: const TextButtonWidget(),
      // home: const ElevatedButtonWidget(),
      // home: const OutlinedButtonWidget(),
      // home: const InsertImage(),
      // home: const row(),
      // home: const column(),
      // home: const inkwell(),
      // home: const MyScrollView(),
      // home: const ListViewStaticData(),
      // home: const ListViewDynamicData(),
      // home: const ContainerDecoration(),
      // home: const ExpandedWidget(),
      // home: const MarginAndPadding(),
      // home: const MyListTile(),
      // home: const MyCircleAvtar(),
      // home: const MyCustomFonts(),
      // home: const MyCardWidget(),
      // home: const MyTextField(),
      // home: const MyDateAndTime(),
      // home: const MyDateAndTimeFormat(),
      // home: const MyDateAndTimePicker(),
      // home: const MyGridView(),
      // home: const MyCallBackFunctions(),
      home: const MyCustomWidget(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //   Container(
          //     width: 200,
          //     height: 60,
          //     margin: const EdgeInsets.only(bottom: 90),
          //     child: ElevatedButton(
          //       onPressed: () {},
          //       child: const Text(
          //         "Welcome",
          //         style: TextStyle(fontSize: 22),
          //       ),
          //     ),
          //   ),
          const Text(
            "My First Flutter App",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontFamily: 'MyCustomFont'),
          ),
          Center(
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 80,
                    color: Colors.red,
                  )
                ],
              ),
              child: const Text(
                "Jeel Patel",
                style: TextStyle(
                    fontSize: 65,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MyCustomFont'),
              ),
            ),
          ),
          SizedBox(
            height: 300,
            child: InkWell(
                onTap: () {}, child: Image.asset('assets/image/me.png')),
          )
        ],
      ),
    );
  }
}
