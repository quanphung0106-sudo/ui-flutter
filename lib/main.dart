import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("images/background-4.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            new Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 45, right: 45),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 45),
                      child: Text(
                        "Welcome Back!!",
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(

                        hintText: 'example@gmail.com',
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                        labelText: 'Email',
                        labelStyle:
                            TextStyle(fontSize: 22, color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1.5),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.5),
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                          prefixIcon: const Icon(Icons.email, color: Colors.white)
                      ),
                    ),
                    SizedBox(height: 35),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      obscureText: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 1.5),
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 1.5),
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                        labelText: 'Password',
                        hintText: 'Your password',
                          hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                        labelStyle:
                            TextStyle(fontSize: 22, color: Colors.white),
                          prefixIcon: const Icon(Icons.security, color: Colors.white)
                      ),
                    ),
                    SizedBox(height: 45),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        color: Colors.blue,
                        child: Text(
                          "Sign in",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 45),
                    Text(
                      "Forgot your password",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Sign up with email",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "--------------- Or Login With ---------------",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.facebook_sharp),
                          color: Colors.blue[700],
                          iconSize: 70,
                          tooltip: 'Sign in with Facebook',
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.alternate_email_sharp),
                          color: Colors.red[600],
                          iconSize: 70,
                          tooltip: 'Sign in with Gmail',
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
