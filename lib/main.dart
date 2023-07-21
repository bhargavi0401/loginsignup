

import 'package:flutter/material.dart';
import 'package:loginsignup/login.dart';
import 'package:loginsignup/signin.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context)=>Mylogin(),
      'signin': (context)=>MySignIn(),
    },
  ));
}


