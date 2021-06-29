import 'package:flutter/material.dart';

class AvailableHospitals extends StatefulWidget {
  @override
  _AvailableHospitalsState createState() => _AvailableHospitalsState();
}

class _AvailableHospitalsState extends State<AvailableHospitals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AVAILABLE HOSPITALS',
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
