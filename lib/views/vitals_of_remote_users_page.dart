import 'package:flutter/material.dart';

class VitalsOfRemoteUsers extends StatefulWidget {
  @override
  _VitalsOfRemoteUsersState createState() => _VitalsOfRemoteUsersState();
}

class _VitalsOfRemoteUsersState extends State<VitalsOfRemoteUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'VITALS OF REMOTE USERS',
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
