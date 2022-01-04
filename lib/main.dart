import 'package:flutter/material.dart';
import 'package:passing_data/src/screen/statefull_interface.dart';
import 'package:passing_data/src/screen/stateless_interface.dart';
import './src/screen/interface.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const Interface(),
      routes: {
        StatelessInterface.routeName: (context) =>  StatelessInterface(),
        StatefulInterface.routeName: (context) =>  StatefulInterface(),
      },
    );
  }
}

