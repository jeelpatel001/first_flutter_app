import 'package:flutter/material.dart';

import 'color_schemes.g.dart';
import 'my_widgets.dart';

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
          Container(
            height: 60,
            margin: const EdgeInsets.only(bottom: 90),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyWidgets()));
              },
              child: const Text(
                "See All Designs",
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
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
