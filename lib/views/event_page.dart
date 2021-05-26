import 'package:flutter/material.dart';

class Event extends StatefulWidget {
  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event'),
        backgroundColor: Color(0xff1e6f5c),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
