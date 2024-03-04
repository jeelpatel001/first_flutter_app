import 'package:first_flutter_app/_10_List_View_StaticData.dart';
import 'package:first_flutter_app/_11_List_View_DynamicData.dart';
import 'package:first_flutter_app/_12_Container_Decoration.dart';
import 'package:first_flutter_app/_13_Expanded_Widget.dart';
import 'package:first_flutter_app/_14_Margin_Padding.dart';
import 'package:first_flutter_app/_1_Container.dart';
import 'package:first_flutter_app/_2_Text_Button_Widget.dart';
import 'package:first_flutter_app/_3_Elevated_Button_Widget.dart';
import 'package:first_flutter_app/_4_Outlined_Button_Widget.dart';
import 'package:first_flutter_app/_5_Insert_Image.dart';
import 'package:first_flutter_app/_6_Row.dart';
import 'package:first_flutter_app/_8_InkWell.dart';
import 'package:first_flutter_app/_9_ScrollView.dart';
import 'package:flutter/material.dart';

import '_7_Column.dart';

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
      home: const MarginAndPadding(),

      
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


    );
  }
}
