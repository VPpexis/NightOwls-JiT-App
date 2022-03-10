// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<RegisterPage> {
  bool value = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailCodeController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: 
        Container(

            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
              
                Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top:10),
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Create a JiT Account',
                      style: TextStyle(
                          color: Color.fromARGB(255, 39, 78, 41),
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          fontFamily: 'Roboto'),
                    )),
                
                
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(top:25),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      labelText: 'Email',
                    ),
                  ),
                ),
               
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top:15),
                  child: TextField(
                    obscureText: true,
                    controller: emailCodeController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      labelText: 'Email Code',
                    ),
                  ),
                ),
                
                 Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top:15),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      labelText: 'Password',
                    ),
                  ),
                ),
               
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top:15),
                  child: TextField(
                    obscureText: true,
                    controller: confirmPasswordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      labelText: 'Confirm Password',
                    ),
                  ),
                ),
             
                
                Container(
                    height: 55,
                    width: 20,
                    margin: const EdgeInsets.only(top:15),
                    padding: const EdgeInsets.fromLTRB(5, 5, 210, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: const Color.fromARGB(255, 59, 173, 62),
                      child: const Text('Register Account',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Roboto'),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        
                        ),
                      onPressed: () {
                        // ignore: avoid_print
                        print(nameController.text);
                        // ignore: avoid_print
                        print(passwordController.text);
                      },
                    )),
               
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Row(
                    children: <Widget>[
                      const Text('Already have a JiT Account?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                      ),
                      TextButton(
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                            fontSize: 15,
                            color:Color.fromARGB(255, 34, 93, 36),
                          ),
                        ),
                        onPressed: () {
                          //signup screen
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  )
                ),

              ],
            )
            ),
            );
  }
}

