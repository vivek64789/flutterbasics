import 'package:flutter/material.dart';
import '../model/Person.dart';

class StatefulInterface extends StatefulWidget {
  static const String routeName = '/stateful_interface';
  StatefulInterface({Key? key}) : super(key: key);

  @override
  _StatefulInterfaceState createState() => _StatefulInterfaceState();
}

class _StatefulInterfaceState extends State<StatefulInterface> {
  @override
  Widget build(BuildContext context) {
    final person = ModalRoute.of(context)!.settings.arguments as Person;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Interface"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("${person.name}"),
            Text("${person.age}"),
            Text("${person.contact}"),
            Text("${person.address}"),
          ],
        ),
      ),
    );
  }
}
