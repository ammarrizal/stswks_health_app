import 'package:flutter/material.dart';

class Vitals extends StatefulWidget {
  @override
  _VitalsState createState() => _VitalsState();
}

class _VitalsState extends State<Vitals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vitals'),
        backgroundColor: Color(0xff1e6f5c),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildVitalItem(label: 'Pulse', value: 5),
            SizedBox(height: 10.0),
            buildVitalItem(label: 'Blood Pressure', value: 5),
            SizedBox(height: 10.0),
            buildVitalItem(label: 'Temp', value: 5),
            SizedBox(height: 10.0),
            buildVitalItem(label: 'VO2 Max', value: 5),
            SizedBox(height: 10.0),
            buildVitalItem(label: 'R-R Intervals', value: 5),
          ],
        ),
      ),
    );
  }

  Text buildVitalItem({String label, int value}) {

    return Text(
      '$label : $value',
      style: TextStyle(
        fontSize: 18.0,
      ),
    );
  }
}
