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

void displayName() {
  print("Jeel Hello");
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var names = ['Jeel', 'Jay', 'Nihar', 'Krish', 'Babloo', 'Motu'];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(
            names[index],
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          );
        },
        itemCount: names.length,
      ),

      /*-------List View and Its Components-------*/
      /* Static Data */
      // body: ListView(
      //   children: const [
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text(
      //         "One ",
      //         style: TextStyle(
      //           fontSize: 25,
      //           fontWeight: FontWeight.w600,
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text(
      //         "Two ",
      //         style: TextStyle(
      //           fontSize: 25,
      //           fontWeight: FontWeight.w600,
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text(
      //         "Three ",
      //         style: TextStyle(
      //           fontSize: 25,
      //           fontWeight: FontWeight.w600,
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text(
      //         "Four ",
      //         style: TextStyle(
      //           fontSize: 25,
      //           fontWeight: FontWeight.w600,
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text(
      //         "Five ",
      //         style: TextStyle(
      //           fontSize: 25,
      //           fontWeight: FontWeight.w600,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),

      /*-------Scroll View-------*/

      // body: Container(
      //   width: double.maxFinite,
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Container(
      //           height: 200,
      //           child: SingleChildScrollView(
      //             scrollDirection: Axis.horizontal,
      //             child: Row(
      //               children: [
      //                 Container(
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.black12,
      //                 ),
      //                 Container(
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.deepPurpleAccent,
      //                 ),
      //                 Container(
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.lime,
      //                 ),
      //                 Container(
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.greenAccent,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         Container(
      //           height: 200,
      //           color: Colors.amber,
      //         ),
      //         Container(
      //           height: 200,
      //           color: Colors.lightBlue,
      //         ),
      //         Container(
      //           height: 200,
      //           color: Colors.green,
      //         ),
      //         Container(
      //           height: 200,
      //           color: Colors.red,
      //         ),
      //         Container(
      //           height: 200,
      //           color: Colors.pink,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      /*-------InkWell Widget-------*/

      // body: Center(
      //   child: InkWell(
      //     onTap: displayName,
      //     onDoubleTap: displayName,
      //     child: Container(
      //       color: Colors.black12,
      //       width: 300,
      //       height: 300,
      //     ),
      //   ),
      // ),

      /*-------Column-------*/

      // body: Container(
      //   color: Colors.black12,
      //   width: 200,
      //   height: 300,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       const Text("A"),
      //       const Text("B"),
      //       const Text("C"),
      //       const Text("D"),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: const Text("Button"),
      //       ),
      //     ],
      //   ),
      // ),

      /*-------Row-------*/

      // body: Container(
      //   color: Colors.black12,
      //   height: 300,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       const Text("A"),
      //       const Text("B"),
      //       const Text("C"),
      //       const Text("D"),
      //       TextButton(
      //         onPressed: () {},
      //         child: const Text("Button"),
      //       ),
      //     ],
      //   ),
      // ),

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
