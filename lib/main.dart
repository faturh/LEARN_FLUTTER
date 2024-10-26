import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  List<Color> mycolor = [Colors.red, Colors.green, Colors.blue, Colors.amber];

  final List<Widget> mylist = List.generate(
      100,
      (index) => Text(
            index.toString(),
          ));

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("List Vieww"),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            // return const Divider(
            //   color: Colors.black,
            // );
            return Container(
              height: 10,
              color: Colors.black,
            );
          },
          itemCount: mycolor.length,
          itemBuilder: (context, index) {
            return null;

            // return mylist;

            // return Text("dadidudedo"
            // );

            // return Container(
            //   height: 300,
            //   width: 300,
            //   color: mycolor[index],
            // );
          },
          // scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
