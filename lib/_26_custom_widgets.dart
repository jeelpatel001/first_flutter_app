import 'package:flutter/material.dart';

class MyCustomWidget extends StatelessWidget {
  const MyCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: GridView.extent(
                maxCrossAxisExtent: 130,
                children: [
                  MyCustomCardWidget(Colors.orange),
                  MyCustomCardWidget(Colors.orange),
                  MyCustomCardWidget(Colors.orange),
                  MyCustomCardWidget(Colors.orange),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: GridView.extent(
                maxCrossAxisExtent: 150,
                children: [
                  MyCustomCardWidget(Colors.blue),
                  MyCustomCardWidget(Colors.blue),
                  MyCustomCardWidget(Colors.blue),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: GridView.extent(
                maxCrossAxisExtent: 150,
                children: [
                  MyCustomCardWidget(Colors.green),
                  MyCustomCardWidget(Colors.green),
                  MyCustomCardWidget(Colors.green),
                  MyCustomCardWidget(Colors.green),
                  MyCustomCardWidget(Colors.green),
                  MyCustomCardWidget(Colors.green),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomCardWidget extends StatelessWidget {
  Color color;

  MyCustomCardWidget(this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: Colors.grey,
            ),
          ]),
    );
  }
}
