import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.amber[600],
            ),
            Container(
              height: 100,
              width: 220,
              color: Colors.orange[500],
              child: null,
            ),
            Container(
              height: 60,
              color: Colors.grey,
            ),
            Container(
              width: 350,
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Email'),
              ),
            ),
            Container(
              height: 350,
            ),
          ],
        ),
      ),
    );
  }
}
