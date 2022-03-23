import 'package:flutter/material.dart';
import 'package:inter_iit/startpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Color.fromRGBO(51, 58, 134, 1),
          ),
          bodyText1: TextStyle(
            color: Color.fromARGB(1, 51, 58, 134),
          ),
        ),
      ),
      home: StartPage(),
    );
  }
}
