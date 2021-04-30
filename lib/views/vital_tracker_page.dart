import 'package:flutter/material.dart';
import 'package:prototype_1/views/vitals_page.dart';

class VitalTracker extends StatefulWidget {
  @override
  _VitalTrackerState createState() => _VitalTrackerState();
}

class _VitalTrackerState extends State<VitalTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1e6f5c),
        title: Text(
          'Vital Tracker',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50.0,10.0,50.0,10.0),
                child: Text(
                  'Vitals',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
              style:  ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xff207d68)),
              ),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Vitals()),);
              },
            ),
            SizedBox(height: 10.0),
            TextButton(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50.0,10.0,50.0,10.0),
                child: Text(
                  'Sugar level',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
              style:  ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xff207d68)),
              ),
              onPressed: (){},
            ),
            SizedBox(height: 10.0),
            TextButton(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50.0,10.0,50.0,10.0),
                child: Text(
                  'Input Sugar level',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
              style:  ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xff207d68)),
              ),
              onPressed: (){},
            ),
            SizedBox(height: 10.0),
            TextButton(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50.0,10.0,50.0,10.0),
                child: Text(
                  'Schedule',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
              style:  ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xff207d68)),
              ),
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}
