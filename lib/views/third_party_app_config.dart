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
        title: Text('Configure 3rd party app'),
        backgroundColor: Color(0xff1e6f5c),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              Text(
                'Overall calorie : 2600',
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
