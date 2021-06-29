import 'package:flutter/material.dart';

class HistoricalRecords extends StatefulWidget {
  @override
  _HistoricalRecordsState createState() => _HistoricalRecordsState();
}

class _HistoricalRecordsState extends State<HistoricalRecords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HISTORICAL RECORDS',
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
