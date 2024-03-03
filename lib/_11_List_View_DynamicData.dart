import 'package:flutter/material.dart';

class ListViewDynamicData extends StatefulWidget {
  const ListViewDynamicData({super.key});

  @override
  State<ListViewDynamicData> createState() => _ListViewDynamicDataState();
}

class _ListViewDynamicDataState extends State<ListViewDynamicData> {
  var names = ['Jeel', 'Jay', 'Nihar', 'Krish', 'Tej', 'Het', 'Smit', 'Samarth', 'Karan', 'Meet'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View (Dynamic Data)"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(top: 2),
            color: Colors.black12,
            height: 100,
            child: Center(
              child: Text(
                names[index],
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
        itemCount: names.length,
      ),
    );
  }
}
