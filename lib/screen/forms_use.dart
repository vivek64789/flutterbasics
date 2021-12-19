import 'package:flutter/material.dart';

class FormUse extends StatefulWidget {
  const FormUse({Key? key}) : super(key: key);

  @override
  State<FormUse> createState() => _FormUseState();
}

class _FormUseState extends State<FormUse> {
  final TextEditingController _firstNumController = TextEditingController();

  final TextEditingController _secondNumController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  int result = 0;

  String? _validateField(value) {
    if (value == null || value.isEmpty) {
      return "Field can not be empty";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("My Form")),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    return _validateField(value);
                  },
                  cursorColor: Colors.purple,
                  controller: _firstNumController,
                  decoration: const InputDecoration(
                    label: Text("First Number"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    return _validateField(value);
                  },
                  cursorColor: Colors.purple,
                  controller: _secondNumController,
                  decoration: const InputDecoration(
                    label: Text("Second Number"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        result = (int.parse(_firstNumController.text) +
                            int.parse(_secondNumController.text));
                      });
                    }
                  },
                  child: const Text(
                    "Sum",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(),
                  child: Text(
                    "Result = $result",
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
