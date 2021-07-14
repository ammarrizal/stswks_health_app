import 'package:flutter/material.dart';
import 'package:prototype_1/services/api.dart';
import 'package:prototype_1/views/input_sugar_level_page.dart';
import 'package:prototype_1/views/sugar_level_page.dart';
//import 'package:prototype_1/views/vitals_page.dart';

class VitalTracker extends StatefulWidget {
  @override
  _VitalTrackerState createState() => _VitalTrackerState();
}

class _VitalTrackerState extends State<VitalTracker> {

  var vitalFuture = API().getVitalById(2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff079cd8),
        title: Text(
          'VITAL TRACKER',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FutureBuilder(
              future: vitalFuture,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    child: buildVitalItem(label: 'Pulse', value: snapshot.data.pulse),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            //buildVitalItem(label: 'Pulse', value: 5),
            SizedBox(height: 10.0),

            FutureBuilder(
              future: vitalFuture,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    child: buildVitalItem(label: 'Blood Pressure', value: snapshot.data.bloodPressure),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            //buildVitalItem(label: 'Blood Pressure', value: 5),
            SizedBox(height: 10.0),

            FutureBuilder(
              future: vitalFuture,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    child: buildVitalItem(label: 'Temp', value: snapshot.data.temp),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            //buildVitalItem(label: 'Temp', value: 5),
            SizedBox(height: 10.0),

            FutureBuilder(
              future: vitalFuture,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    child: buildVitalItem(label: 'VO2 Max', value: snapshot.data.vo2Max),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            //buildVitalItem(label: 'VO2 Max', value: 5),
            SizedBox(height: 10.0),

            FutureBuilder(
              future: vitalFuture,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    child: buildVitalItem(label: 'R-R Intervals', value: snapshot.data.rrIntervals),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            //buildVitalItem(label: 'R-R Intervals', value: 5),

            // TextButton(
            //   child: Padding(
            //     padding: const EdgeInsets.fromLTRB(50.0,10.0,50.0,10.0),
            //     child: Text(
            //       'Vitals',
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 20.0,
            //       ),
            //     ),
            //   ),
            //   style:  ButtonStyle(
            //     backgroundColor: MaterialStateProperty.all(Color(0xff207d68)),
            //   ),
            //   onPressed: (){
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => Vitals()),);
            //   },
            // ), // Vitals Button
            SizedBox(height: 50.0),

            Container(
              width: 300,
              child: TextButton(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30.0,10.0,30.0,10.0),
                  child: Text(
                    'SUGAR LEVEL',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(
                      color: Color(0xff96d3ee),
                      width: 0.0,
                    ),
                  )),
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)),
                  backgroundColor: MaterialStateProperty.all(Color(0xff079cd8)),
                ),
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SugarLevel()),);
                },
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: 300,
              child: TextButton(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0),
                  child: Text(
                    'INPUT SUGAR LEVEL',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(
                      color: Color(0xff96d3ee),
                      width: 0.0,
                    ),
                  )),
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)),
                  backgroundColor: MaterialStateProperty.all(Color(0xff079cd8)),
                ),
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputSugarLevel()),);
                },
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: 300,
              child: TextButton(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0),
                  child: Text(
                    'SCHEDULE',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(
                      color: Color(0xff96d3ee),
                      width: 0.0,
                    ),
                  )),
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)),
                  backgroundColor: MaterialStateProperty.all(Color(0xff079cd8)),
                ),
                onPressed: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text buildVitalItem({String label, dynamic value}) {

    return Text(
      '$label : $value',
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }


}
