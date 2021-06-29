import 'package:flutter/material.dart';

class SupportedDocuments extends StatefulWidget {
  @override
  _SupportedDocumentsState createState() => _SupportedDocumentsState();
}

class _SupportedDocumentsState extends State<SupportedDocuments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SUPPORTED DOCUMENTS',
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
