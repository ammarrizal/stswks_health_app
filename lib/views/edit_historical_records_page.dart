import 'package:flutter/material.dart';

class EditHistoricalRecords extends StatefulWidget {
  @override
  _EditHistoricalRecordsState createState() => _EditHistoricalRecordsState();
}

class _EditHistoricalRecordsState extends State<EditHistoricalRecords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EDIT HISTORICAL RECORDS',
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
