import 'package:flutter/material.dart';

class ViewCurrentNotification extends StatefulWidget {
  @override
  _ViewCurrentNotificationState createState() => _ViewCurrentNotificationState();
}

class _ViewCurrentNotificationState extends State<ViewCurrentNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'VIEW CURRENT NOTIFICATION',
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
