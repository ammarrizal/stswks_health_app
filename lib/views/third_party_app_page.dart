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
        title: Text('Add 3rd party app'),
        backgroundColor: Color(0xff1e6f5c),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              Text(
                'Overall calorie : 2400',
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
