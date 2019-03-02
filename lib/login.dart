import 'package:flutter/material.dart';
import 'package:myapp2/home.dart';

class Login extends StatefulWidget {
  static String tag = 'login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'Hero',
      child: CircleAvatar(
        radius: 48.0,
        child: Image.asset('images/planet.png'),

      ),
      );
      final email =TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Enter email Id',
          contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))
        ),
      );
      final password =TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Enter email Id',
          contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          
        ),
      );
      
      final logbtn =Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: RaisedButton(
          onPressed: (){
            Navigator.of(context).pushNamed(Home.tag);
          },
          padding: EdgeInsets.all(12),
          color: Colors.lightBlue,
          child: Text('Login', style: TextStyle(color: Colors.lime),),
        ),
      );
      return new Scaffold(
      appBar: new AppBar(
        title: new Text("Java Ki Jai Ho"),
        centerTitle: true,
        backgroundColor: Colors.white54,
      ),
      backgroundColor: Colors.white,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          shrinkWrap: true,
          children: <Widget>[
            logo,
            SizedBox(height: 48.0,),
            email,
            SizedBox(height: 8.0,),
            password,
            SizedBox(height: 8.0,),
            logbtn,
            SizedBox(height: 12.0,)

          ],
          
      )
    )
      );
  }
}