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
        title: Text('Sugar level'),
        backgroundColor: Color(0xff1e6f5c),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sugar level : 10',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
