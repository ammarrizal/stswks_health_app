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
        title: Text('Consumed Food'),
        backgroundColor: Color(0xff1e6f5c),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
