import 'package:flutter/material.dart';
import 'package:passing_data/src/screen/statefull_interface.dart';
import 'package:passing_data/src/screen/stateless_interface.dart';
import '../model/Person.dart';

class Interface extends StatefulWidget {
  const Interface({Key? key}) : super(key: key);

  @override
  _InterfaceState createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  final _formKey = GlobalKey<FormState>();
  Person? _person = Person();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Passing data',
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Passing Data Interface"),
            ),
            body: Form(
              key: _formKey,
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        labelText: 'Enter your name',
                      ),
                      onSaved: (newValue) => _person!.name = newValue,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Enter your age',
                      ),
                      onSaved: (newValue) => _person!.age = newValue,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Enter your Contact',
                      ),
                      onSaved: (newValue) => _person!.contact = newValue,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Enter your Address',
                      ),
                      onSaved: (newValue) => _person!.address = newValue,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => StatelessInterface(
                          //             person: _person,
                          //           )),
                          // );

                          Navigator.pushNamed(
                              context, StatelessInterface.routeName,
                              arguments: _person);
                        }
                      },
                      child: const Text('Submit Stateless'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          Navigator.pushNamed(
                              context, StatefulInterface.routeName,
                              arguments: _person);
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) =>
                          //         StatefulInterface(person: _person),
                          //   ),
                          // );
                        }
                      },
                      child: const Text('Submit Stateful'),
                    ),
                  ],
                ),
              )),
            )));
  }
}
