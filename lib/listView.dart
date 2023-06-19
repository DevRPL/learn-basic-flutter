import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> myColor = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.amber
  ];

  final List<Widget> myList = List.generate(
      100,
      (index) => Text(
            "${index + 1}",
			style: TextStyle(
				fontSize: 20 + double.parse(index.toString()),
			),
          ));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        //   body: ListView.builder(
        body: ListView(
          // body: ListView.separated(
          // separatorBuilder
          //   separatorBuilder: (context, index) {
          //     return Divider(
          //       color: Colors.black,
          //     );
          //   },
          //
          //   itemCount: myColor.length,
          //   itemBuilder: (context, index) {
          // return (Container(
          //   height: 300,
          //   width: 300,
          //   color: myColor[index],
          // ));
          children: myList,
          //   },
        ),
      ),
    );
  }
}
