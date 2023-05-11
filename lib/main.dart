import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<String> name = [
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten",
    "eleven",
    "twelve"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ROBBY MAULANA - 191011401643"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          for (int i = 0; i < name.length; i++)
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              height: 200,
              width: 200,
              alignment: Alignment.topLeft,
              color: Color.fromARGB(255, i * 15, 100, 100),
              child: Text(
                name[i],
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
