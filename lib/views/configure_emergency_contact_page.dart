import 'package:flutter/material.dart';

class ConfigureEmergencyContact extends StatefulWidget {
  @override
  _ConfigureEmergencyContactState createState() => _ConfigureEmergencyContactState();
}

class _ConfigureEmergencyContactState extends State<ConfigureEmergencyContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CONFIGURE EMERGENCY CONTACT',
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
