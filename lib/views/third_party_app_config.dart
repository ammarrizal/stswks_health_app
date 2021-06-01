import 'package:flutter/material.dart';

class ThirdPartyAppConfigPage extends StatefulWidget {
  @override
  _ThirdPartyAppConfigPageState createState() => _ThirdPartyAppConfigPageState();
}

class _ThirdPartyAppConfigPageState extends State<ThirdPartyAppConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CONFIGURE 3RD PARTY APP',
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
