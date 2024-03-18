import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View Layout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: GridView.builder(
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(5),
              color: Colors.redAccent,
            );
          },
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 170,
          ),
          itemCount: 20,
        ),

        // --------- GridView.extent ---------
        // GridView.extent(
        //   maxCrossAxisExtent: 200,
        //   children: [
        //     Container(
        //       margin: const EdgeInsets.all(5),
        //       color: Colors.amberAccent,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(5),
        //       color: Colors.blueAccent.shade100,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(5),
        //       color: Colors.orange,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(5),
        //       color: Colors.redAccent,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(5),
        //       color: Colors.pinkAccent,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(5),
        //       color: Colors.greenAccent,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(5),
        //       color: Colors.blueGrey,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(5),
        //       color: Colors.amberAccent,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(5),
        //       color: Colors.blueAccent.shade100,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(5),
        //       color: Colors.orange,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(5),
        //       color: Colors.redAccent,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(5),
        //       color: Colors.pinkAccent,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(5),
        //       color: Colors.greenAccent,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(5),
        //       color: Colors.blueGrey,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
