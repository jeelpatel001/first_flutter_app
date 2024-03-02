import 'package:flutter/material.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'First App'),
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


      /*-------Row and Columns-------*/

      body:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("A"),
            Text("B"),
            Text("C"),
            Text("D"),
            TextButton(
              onPressed: () {},
              child: const Text("Button"),
            ),
          ],
        ),

      /*-------Insert Image-------*/

      //
      // body: Center(
      //   child: Container(
      //       width: 100, height: 100, child: Image.asset('assets/image/me.png')),
      // ),

      /*-------Outlined Button Widget-------*/

      // body: Center(
      //   child: OutlinedButton(
      //     child: const Text("Elevated Button"),
      //     onPressed: (){
      //       print("Outlined Button Clicked");
      //     },
      //     onLongPress: (){
      //       print("Outlined Button Long Clicked");
      //     },
      //   ),
      // ),

      /*-------Elevated Button Widget-------*/

      // body: Center(
      //   child: ElevatedButton(
      //     child: const Text("Elevated Button"),
      //     onPressed: (){
      //       print("Elevated Button Clicked");
      //     },
      //     onLongPress: (){
      //       print("Elevated Button Long Clicked");
      //     },
      //   ),
      // ),

      /*-------Text Button Widget-------*/

      // body: Center(
      //   child: TextButton(
      //     child: Text('Click me'),
      //     onPressed: () {
      //       print("Clicked");
      //     },
      //     onLongPress: (){
      //       print("Long Clicked");
      //     },
      //   ),
      // ),

      /*-------Container or Center Widget-------*/
      // body: Padding(
      //   padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
      //   child: Container(
      //     width: double.maxFinite,
      //     height: 200,
      //     decoration: const BoxDecoration(
      //       color: Colors.lightBlueAccent,
      //       borderRadius: BorderRadius.only(
      //           topLeft: Radius.circular(15.0),
      //           bottomRight: Radius.circular(15.0),
      //           topRight: Radius.circular(15.0),
      //           bottomLeft: Radius.circular(15.0)),
      //     ),
      //     child: const Center(
      //       child: Text(
      //         "Jeel Patel",
      //         style: TextStyle(
      //             fontSize: 30,
      //             color: Colors.black,
      //             fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
