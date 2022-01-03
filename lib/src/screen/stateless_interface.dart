import 'package:flutter/material.dart';
import '../model/Person.dart';

class StatelessInterface extends StatelessWidget {
  static const String routeName = '/stateless_interface';
  Person? person;
  
  StatelessInterface({Key? key, this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless Interface"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("${person!.name}"),
            Text("${person!.age}"),
            Text("${person!.contact}"),
            Text("${person!.address}"),
          ],
        ),
      ),
    );
  }
}
