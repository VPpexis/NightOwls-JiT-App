import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/loginpagebg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Container(
              //color: Colors.amber[600],
              height: 225,
            ),
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
            ),
            Container(
              //color: Colors.amber[600],
              height: 20,
            ),
            Container(
              height: 75,
              width: 350,
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                  children: const <Widget>[
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 75,
              width: 350,
              alignment: Alignment.center,
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
            ),
            SizedBox(
              height: 20,
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: const <Widget>[
                      Text('Box '),
                      Text('Remember Me'),
                    ],
                  ),
                  const Text('Forget password?')
                ],
              ),
            ),
            Container(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(200, 50),
              ),
              onPressed: () {},
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 28),
              ),
            ),
            Container(
              height: 140,
              //color: Colors.amber[600],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text("New to Jit? "),
                Text(
                  "Create New Account",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

    
//     return MaterialApp(
//       home: Stack(
//         children: <Widget>[
//           Scaffold(
//             body: Container(
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage("assets/loginpagebg.png"),
//                     fit: BoxFit.cover),
//               ),
//             ),
//           ),
//           const Positioned(
//             left: 120,
//             right: 120,
//             bottom: 580,
//             child: Image(
//               image: AssetImage("assets/logo.png"),
//             ),
//           ),
//           Column(
//             children: const <Widget>[
//               Text("Email"),
//               Material(
//                 child: TextField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Email',
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
