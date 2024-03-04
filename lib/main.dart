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
      home: const MyHomePage(title: "Home Page"),

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
      // home: const MyCustomFonts(),
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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 60,
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
          Container(
            height: 300,
            child: Image.asset('assets/image/me.png'),
          )
        ],
      ),
    );
  }
}
