import 'package:flutter/material.dart';

class ContactRemoteUsers extends StatefulWidget {
  @override
  _ContactRemoteUsersState createState() => _ContactRemoteUsersState();
}

class _ContactRemoteUsersState extends State<ContactRemoteUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CONTACT REMOTE USERS',
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
