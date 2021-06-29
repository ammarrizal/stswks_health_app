import 'package:flutter/material.dart';

class DisplayMedication extends StatefulWidget {
  @override
  _DisplayMedicationState createState() => _DisplayMedicationState();
}

class _DisplayMedicationState extends State<DisplayMedication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DISPLAY MEDICATION',
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
