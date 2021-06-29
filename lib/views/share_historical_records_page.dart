import 'package:flutter/material.dart';

class ShareHistoricalRecords extends StatefulWidget {
  @override
  _ShareHistoricalRecordsState createState() => _ShareHistoricalRecordsState();
}

class _ShareHistoricalRecordsState extends State<ShareHistoricalRecords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SHARE HISTORICAL RECORDS',
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
