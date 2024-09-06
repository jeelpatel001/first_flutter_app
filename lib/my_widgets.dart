import 'package:first_flutter_app/_10_List_View_StaticData.dart';
import 'package:first_flutter_app/_11_List_View_DynamicData.dart';
import 'package:first_flutter_app/_12_Container_Decoration.dart';
import 'package:first_flutter_app/_13_Expanded_Widget.dart';
import 'package:first_flutter_app/_14_Margin_Padding.dart';
import 'package:first_flutter_app/_15_list_tile.dart';
import 'package:first_flutter_app/_17_custom_fonts.dart';
import 'package:first_flutter_app/_18_style_themes.dart';
import 'package:first_flutter_app/_19_card_widget.dart';
import 'package:first_flutter_app/_1_Container.dart';
import 'package:first_flutter_app/_20_text_input_widget.dart';
import 'package:first_flutter_app/_21_get_date_and_time.dart';
import 'package:first_flutter_app/_22_format_date_and_time.dart';
import 'package:first_flutter_app/_23_date_time_picker.dart';
import 'package:first_flutter_app/_24_grid_view_layout.dart';
import 'package:first_flutter_app/_25_callback_functions.dart';
import 'package:first_flutter_app/_26_custom_widgets.dart';
import 'package:first_flutter_app/_2_Text_Button_Widget.dart';
import 'package:first_flutter_app/_7_Column.dart';
import 'package:first_flutter_app/_8_InkWell.dart';
import 'package:first_flutter_app/_9_ScrollView.dart';
import 'package:flutter/material.dart';

import '_3_Elevated_Button_Widget.dart';
import '_4_Outlined_Button_Widget.dart';
import '_5_Insert_Image.dart';
import '_6_Row.dart';

class MyWidgets extends StatefulWidget {
  const MyWidgets({super.key});

  @override
  State<MyWidgets> createState() => _MyWidgetsState();
}

class _MyWidgetsState extends State<MyWidgets> {
  var arrNames = [
    "Container",
    "Text Button Widgets",
    "Elevated Button Widgets",
    "Outlined Button Widgets",
    "Insert Image",
    "Row",
    "Column",
    "InkWell Widget",
    "Scroll View",
    "List View With Static Data",
    "List View With Dynamic Data",
    "Container Decoration",
    "Expanded Widget",
    "Margin Padding",
    "List Tile",
    "Circle Avtar",
    "Custom Fonts",
    "Style Themes",
    "Card Widget",
    "Text Input Widget",
    "Get Date and Time",
    "Format Date and Time",
    "Date And Time Picker",
    "Grid View Layout",
    "CallBack Function",
    "Custom Widget",
  ];

  List<Widget> arrLinks = [
    const ContainerOrCenter(),
    const TextButtonWidget(),
    const ElevatedButtonWidget(),
    const OutlinedButtonWidget(),
    const InsertImage(),
    const row(),
    const column(),
    const inkwell(),
    const MyScrollView(),
    const ListViewStaticData(),
    const ListViewDynamicData(),
    const ContainerDecoration(),
    const ExpandedWidget(),
    const MarginAndPadding(),
    const MyListTile(),
    const CircleAvatar(),
    const MyCustomFonts(),
    const MyStyleTheme(),
    const MyCardWidget(),
    const MyTextField(),
    const MyDateAndTime(),
    const MyDateAndTimeFormat(),
    const MyDateAndTimePicker(),
    const MyGridView(),
    const MyCallBackFunctions(),
    const MyCustomWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Widgets")),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text("${index + 1}"),
              title: Text(arrNames[index]),
              trailing: const Icon(Icons.remove_red_eye_outlined),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => arrLinks[index]));
                print(arrNames[index]);
              },
              onLongPress: () {
                print("${arrNames[index]} Long Pressed ");
              },
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              thickness: 1,
              color: Colors.black12,
            );
          },
          itemCount: arrNames.length),
    );
  }
}
