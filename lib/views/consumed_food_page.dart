import 'package:flutter/material.dart';

class ConsumedFood extends StatefulWidget {
  @override
  _ConsumedFoodState createState() => _ConsumedFoodState();
}

class _ConsumedFoodState extends State<ConsumedFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CONSUMED FOOD',
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
