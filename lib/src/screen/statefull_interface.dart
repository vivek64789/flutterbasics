import 'package:flutter/material.dart';
import '../model/Person.dart';

class StatefulInterface extends StatefulWidget {
  static const String routeName = '/stateful_interface';
  Person? person;
  StatefulInterface({Key? key, this.person}) : super(key: key);

  @override
  _StatefulInterfaceState createState() => _StatefulInterfaceState();
}

class _StatefulInterfaceState extends State<StatefulInterface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Interface"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("${widget.person!.name}"),
            Text("${widget.person!.age}"),
            Text("${widget.person!.contact}"),
            Text("${widget.person!.address}"),
          ],
        ),
      ),
    );
  }
}
