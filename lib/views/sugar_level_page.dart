import 'package:flutter/material.dart';

class SugarLevel extends StatefulWidget {
  @override
  _SugarLevelState createState() => _SugarLevelState();
}

class _SugarLevelState extends State<SugarLevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SUGAR LEVEL',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff079cd8),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sugar level : 10',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20.0,
                color: Colors.black,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
