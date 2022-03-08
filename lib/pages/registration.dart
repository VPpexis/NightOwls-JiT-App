import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Jit',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Jit'),
          ),
          body: const Center(
            child: Text('Hello World'),
          ),
        ));
  }
}
