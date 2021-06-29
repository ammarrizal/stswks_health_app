import 'package:flutter/material.dart';

class EditRemoteUsers extends StatefulWidget {
  @override
  _EditRemoteUsersState createState() => _EditRemoteUsersState();
}

class _EditRemoteUsersState extends State<EditRemoteUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EDIT REMOTE USERS',
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
