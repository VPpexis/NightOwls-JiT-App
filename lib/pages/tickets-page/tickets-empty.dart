

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';


class EmptyTicket extends StatefulWidget {
  const EmptyTicket({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<EmptyTicket> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: 
        Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/tickets-assets/iconEmpty.png'),
                alignment: Alignment.center,
              ),
            ),

            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[

                Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top:170),
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'No current tickets bought today...',
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
                    margin: const EdgeInsets.only(top:225),
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.fromLTRB(65, 0, 65, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: const Color.fromARGB(255, 59, 173, 62),
                      child: const Text('Buy Tickets',         
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'RobotoMono'),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        ),
                      onPressed: () => {}
                    )
                  ),

                  Container(
                    margin: const EdgeInsets.only(top:23),
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.fromLTRB(65, 0, 65, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: const Color.fromARGB(255, 133, 173, 59),
                      child: const Text('View History',         
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'RobotoMono'),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        ),
                      onPressed: () => {}
                    )),
            ],
        )
      ),
    );
  }
}
