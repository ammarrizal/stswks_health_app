import 'package:flutter/material.dart';

class MinistrySocialFeed extends StatefulWidget {
  @override
  _MinistrySocialFeedState createState() => _MinistrySocialFeedState();
}

class _MinistrySocialFeedState extends State<MinistrySocialFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MINISTRY SOCIAL FEED',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff079cd8),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
