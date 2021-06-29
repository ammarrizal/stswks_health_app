import 'package:flutter/material.dart';

class ConfigureNotificationIntervals extends StatefulWidget {
  @override
  _ConfigureNotificationIntervalsState createState() => _ConfigureNotificationIntervalsState();
}

class _ConfigureNotificationIntervalsState extends State<ConfigureNotificationIntervals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CONFIGURE NOTIFICATION INTERVALS',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff079cd8),
        centerTitle: true,
      ),
    );
  }
}
