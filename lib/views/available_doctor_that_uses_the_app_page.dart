import 'package:flutter/material.dart';

class AvailableDoctorThatUsesTheApp extends StatefulWidget {
  @override
  _AvailableDoctorThatUsesTheAppState createState() => _AvailableDoctorThatUsesTheAppState();
}

class _AvailableDoctorThatUsesTheAppState extends State<AvailableDoctorThatUsesTheApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AVAILABLE DOCTOR THAT USES THE APP',
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
