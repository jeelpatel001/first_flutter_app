import 'package:flutter/material.dart';

class MyListTile extends StatefulWidget {
  const MyListTile({super.key});

  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  var arrNames = [
    "Bhensadadiya Jeel",
    "Krish Lalani",
    "Nihar Bharatia",
    "Jay Rupapra",
    "Tej Kalariya",
    "Smit Panara",
    "Samarth Dadhaniya",
    "Kalpan Desai",
    "Karan Vekariya",
    "Meet Chovatiya",
    "Tirth Chhatrala"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Tile"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text("${index + 1}"),
              title: Text(arrNames[index]),
              subtitle: Text("jeel.official.24@gmail.com"),
              trailing: Icon(Icons.remove_red_eye_outlined),
              onTap: () {
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
