

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';


class ChooseRoute extends StatefulWidget {
  const ChooseRoute({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<ChooseRoute> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: 
        Container(
          margin: const EdgeInsets.only(top:190),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/payments-assets/routeIcon.png'),
                alignment: Alignment.topCenter,
              ),
            ),

            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[

                Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top:140),
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Please choose a route first',
                      style: TextStyle(
                          color: Color.fromARGB(255, 23, 47, 24),
                          fontWeight: FontWeight.w300,
                          fontSize: 22,
                          fontFamily: 'Roboto-LightItalic.ttf',
                          fontStyle: FontStyle.italic
                          ),
                    )
                  ),

                  Container(
                    alignment: Alignment.topCenter,
                    child: const Text(
                      'NOTE: Search your routes in the Home Page!',
                      style: TextStyle(
                          color: Color.fromARGB(255, 23, 47, 24),
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                          fontFamily: 'Roboto-LightItalic.ttf',
                          fontStyle: FontStyle.italic
                          ),
                    )
                  ),
            ],
        )
      ),
    );
  }
}
