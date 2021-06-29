import 'package:flutter/material.dart';
import 'package:prototype_1/views/add_remove_doctors.dart';
import 'package:prototype_1/views/available_doctor_that_uses_the_app_page.dart';
import 'package:prototype_1/views/doctor_details_page.dart';
import 'package:prototype_1/views/doctors_page.dart';
import 'package:prototype_1/views/edit_historical_records_page.dart';
import 'package:prototype_1/views/historical_records_page.dart';
import 'package:prototype_1/views/share_historical_records_page.dart';

class Telemedicine extends StatefulWidget {
  @override
  _TelemedicineState createState() => _TelemedicineState();
}

class _TelemedicineState extends State<Telemedicine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TELEMEDICINE',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff079cd8),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 15.0),

                  TextButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Doctors()),);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      )),
                      padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                      backgroundColor: MaterialStateProperty.all(Color(0xff079cd8)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'DOCTORS',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ), // calorie counter

                  SizedBox(height: 15.0),

                  TextButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DoctorDetails()),);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      )),
                      padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                      backgroundColor: MaterialStateProperty.all(Color(0xff079cd8)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'DOCTOR\'S DETAILS',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ), // consumed food

                  SizedBox(height: 15.0),

                  TextButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddRemoveDoctors()),);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      )),
                      padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                      backgroundColor: MaterialStateProperty.all(Color(0xff079cd8)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'ADD / REMOVE DOCTORS',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15.0),

                  TextButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AvailableDoctorThatUsesTheApp()),);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      )),
                      padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                      backgroundColor: MaterialStateProperty.all(Color(0xff079cd8)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'AVAILABLE DOCTORS THAT USES THE APP',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15.0),

                  TextButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HistoricalRecords()),);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      )),
                      padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                      backgroundColor: MaterialStateProperty.all(Color(0xff079cd8)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'VIEW HISTORICAL RECORDS',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15.0),

                  TextButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ShareHistoricalRecords()),);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      )),
                      padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                      backgroundColor: MaterialStateProperty.all(Color(0xff079cd8)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'SHARE HISTORICAL RECORDS',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15.0),

                  TextButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditHistoricalRecords()),);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      )),
                      padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                      backgroundColor: MaterialStateProperty.all(Color(0xff079cd8)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'EDIT HISTORICAL RECORDS',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
