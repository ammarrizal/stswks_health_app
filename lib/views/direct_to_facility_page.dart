import 'package:flutter/material.dart';

class DirectToFacility extends StatefulWidget {
  @override
  _DirectToFacilityState createState() => _DirectToFacilityState();
}

class _DirectToFacilityState extends State<DirectToFacility> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FACILITY',
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
