import 'package:flutter/material.dart';

class AddRemoveDoctors extends StatefulWidget {
  @override
  _AddRemoveDoctorsState createState() => _AddRemoveDoctorsState();
}

class _AddRemoveDoctorsState extends State<AddRemoveDoctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ADD / REMOVE DOCTORS',
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
