import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
