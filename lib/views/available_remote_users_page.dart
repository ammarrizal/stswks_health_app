import 'package:flutter/material.dart';

class AvailableRemoteUsers extends StatefulWidget {
  @override
  _AvailableRemoteUsersState createState() => _AvailableRemoteUsersState();
}

class _AvailableRemoteUsersState extends State<AvailableRemoteUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AVAILABLE REMOTE USERS',
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
