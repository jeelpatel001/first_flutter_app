import 'package:first_flutter_app/_1_Container.dart';
import 'package:first_flutter_app/_2_Text_Button_Widget.dart';
import 'package:first_flutter_app/_3_Elevated_Button_Widget.dart';
import 'package:first_flutter_app/_4_Outlined_Button_Widget.dart';
import 'package:first_flutter_app/_5_Insert_Image.dart';
import 'package:first_flutter_app/_6_Row.dart';
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

      // home: const ContainerOrCenter(),
      // home: const TextButtonWidget(),
      // home: const ElevatedButtonWidget(),
      // home: const OutlinedButtonWidget(),
      // home: const InsertImage(),
      home: const row(),
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

      /*-------Container Decoration-------*/

      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(21),
              border: Border.all(
                  color: Colors.black,
                  width: .5,
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignCenter),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blueGrey,
                  // spreadRadius: 11,
                  blurRadius: 20,
                ),
              ]),
        ),
      ),

      /*-------List View and Its Components-------*/
      /* Dynamic Data */

      // body: ListView.builder(
      //   itemBuilder: (context, index) {
      //     return Text(
      //       names[index],
      //       style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
      //     );
      //   },
      //   itemCount: names.length,
      // ),

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



    );
  }
}
