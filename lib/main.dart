import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:prototype_1/views/login_page.dart';
import 'package:prototype_1/views/welcome_page.dart';
//import './views/my_home_page.dart';

void main() {
  runApp(MyApp());
  HttpOverrides.global = new MyHttpOverrides();
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prototype Health App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomePage(),
    );
  }
}
