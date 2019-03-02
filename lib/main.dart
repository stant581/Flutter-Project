import 'package:flutter/material.dart';
import 'package:myapp2/login.dart';
import 'package:myapp2/register.dart';
import 'package:myapp2/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final qwerty = <String, WidgetBuilder>{
        Login.tag : (context)=> new Login(),
        Register.tag :(context) => new Register(),
        Home.tag : (context) => new Home()

  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Java Ki Ma ki',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home:Login(),
      routes: qwerty,
    );
  }
}   