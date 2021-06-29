import 'package:flutter/material.dart';

class AvailableRecords extends StatefulWidget {
  @override
  _AvailableRecordsState createState() => _AvailableRecordsState();
}

class _AvailableRecordsState extends State<AvailableRecords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AVAILABLE RECORDS',
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
