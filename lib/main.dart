import "package:flutter/material.dart";
import 'pages/login-screen/login_ui.dart';
import 'pages/login-screen/register_ui.dart';
import 'pages/tickets-page/tickets-empty.dart';
import 'pages/payment-page/chooseRoute.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: 'RobotoMono',
          ), 
          home: const ChooseRoute());
  }
}