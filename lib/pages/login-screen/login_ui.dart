// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<LoginPage> {
  bool value = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: 
        Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/login-assets/upperdesign.png'),
                alignment: Alignment.topRight,
              ),
            ),

            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
              
                Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top:160),
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Welcome',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          fontFamily: 'Roboto'),
                    )),
                
                
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top:10),
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
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                  margin: const EdgeInsets.only(top:10),
                  padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                  child: CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Transform.translate(
                            offset: const Offset(-20, 0),
                            child: const Text("Remember me",
                            style:TextStyle(
                            color: Color.fromARGB(255, 49, 77, 50),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            fontFamily: 'Roboto'),
                           ),
                          ),
                          value: value,
                          activeColor: const Color.fromARGB(255, 37, 75, 38),
                          onChanged: (value) => setState(() => this.value = value!,
                            ),     
                  ),
                ),
                
             
                Container(
                    height: 55,
                    width: 20,
                    margin: const EdgeInsets.only(top:20),
                    padding: const EdgeInsets.fromLTRB(10, 10, 210, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: const Color.fromARGB(255, 59, 173, 62),
                      child: const Text('Login',
                      style: TextStyle(
                        fontSize: 16,
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
                  padding: const EdgeInsets.fromLTRB(5, 40, 0, 0),
                  child: Row(
                    children: <Widget>[
                      const Text('New to JiT?',
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

