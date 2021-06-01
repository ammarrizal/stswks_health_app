import 'package:flutter/material.dart';

class ThirdPartyAppPage extends StatefulWidget {
  @override
  _ThirdPartyAppPageState createState() => _ThirdPartyAppPageState();
}

class _ThirdPartyAppPageState extends State<ThirdPartyAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ADD 3RD PARTY APP',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff079cd8),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              Text(
                '---',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
