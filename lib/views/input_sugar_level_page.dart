import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:prototype_1/models/vital_model.dart';
import 'package:prototype_1/services/api.dart';
import 'package:prototype_1/views/my_home_page.dart';
import 'package:prototype_1/views/vital_tracker_page.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
class InputSugarLevel extends StatefulWidget {
  @override
  _InputSugarLevelState createState() => _InputSugarLevelState();
}

class _InputSugarLevelState extends State<InputSugarLevel> {

  final sugarLevelController = TextEditingController();
  final testTimeController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var vital = VitalModel();
  final format = DateFormat("yyyy-MM-dd HH:mm");

  // @override
  // void dispose() {
  //   // Clean up the controller when the widget is disposed.
  //   sugarLevelController.dispose();
  //   testTimeController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'INPUT SUGAR LEVEL',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff079cd8),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Input sugar level',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Poppins',
                      //color: Colors.white,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  FutureBuilder(
                    future: API().getVitalById(2),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: [
                            TextFormField(
                              //controller: sugarLevelController,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                hintText: 'Enter your blood sugar level',
                              ),
                              initialValue: snapshot.data.sugarLevel.toString(),
                              onSaved: (input) {
                                vital.pulse = snapshot.data.pulse;
                                vital.temp = snapshot.data.temp;
                                vital.vo2Max = snapshot.data.vo2Max;
                                vital.rrIntervals = snapshot.data.rrIntervals;
                                vital.bloodPressure = snapshot.data.bloodPressure;
                                vital.testDate = snapshot.data.testDate;
                                vital.sugarLevel = int.parse(input);
                              },
                            ),
                            SizedBox(height: 25.0),
                            Text(
                              'Test time',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            SizedBox(height: 10.0),
                            DateTimeField(
                              //initialValue: snapshot.data.testDate ?? snapshot.data.testDate,
                              format: format,
                              onSaved: (input) {
                                vital.testDate = input;
                              },
                              onShowPicker: (context, currentValue) async {
                                final date = await showDatePicker(
                                    context: context,
                                    firstDate: DateTime(1900),
                                    initialDate: currentValue ?? DateTime.now(),
                                    lastDate: DateTime(2100));
                                if (date != null) {
                                  final time = await showTimePicker(
                                    context: context,
                                    initialTime:
                                    TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
                                  );
                                  //dateTimeInput = DateTimeField.combine(date, time);
                                  //vital.testDate = DateTimeField.combine(date, time);
                                  //print( DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(dateTimeInput));
                                  return DateTimeField.combine(date, time);
                                } else {
                                  return currentValue;
                                }
                              },
                            ),
                          ],
                        );
                      }
                      else {
                        return const Text('No data');
                      }
                    },
                  ),


                  SizedBox(height: 25.0),


                  // TextFormField(
                  //   //controller: testTimeController,
                  //   style: TextStyle(
                  //     fontFamily: 'Poppins',
                  //   ),
                  //   textAlign: TextAlign.center,
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(0.0), // 30 previously
                  //     ),
                  //     hintText: 'Enter the test time',
                  //   ),
                  // ),
                  SizedBox(height: 15.0),
                  Container(
                    width: 400,
                    child: TextButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();

                          print('update is ${vital.testDate}');
                          print('update is ${vital.sugarLevel}');
                          //TODO: Change user id dynamically
                          vital.id = 2;

                          API().updateVitalById(2, vital);

                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => MyHomePage(),
                            ),
                                (route) => false,
                          );
                        }
                      },
                      // style: ButtonStyle(
                      //   shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(40.0),
                      //   )),
                      //   padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                      //   backgroundColor: MaterialStateProperty.all(Color(0xff1e6f5c)),
                      // ),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: BorderSide(
                            color: Color(0xff96d3ee),
                            width: 0.0,
                          ),
                        )),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0)),
                        backgroundColor: MaterialStateProperty.all(Color(0xff079cd8)),
                      ),
                      child: Text(
                        'SAVE',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   width: 400,
                  //   child: TextButton(
                  //     onPressed: () async {},
                  //     // style: ButtonStyle(
                  //     //   shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  //     //     borderRadius: BorderRadius.circular(40.0),
                  //     //   )),
                  //     //   padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                  //     //   backgroundColor: MaterialStateProperty.all(Color(0xff1e6f5c)),
                  //     // ),
                  //     style: ButtonStyle(
                  //       shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(0.0),
                  //         side: BorderSide(
                  //           color: Color(0xff96d3ee),
                  //           width: 0.0,
                  //         ),
                  //       )),
                  //       padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0)),
                  //       backgroundColor: MaterialStateProperty.all(Color(0xff079cd8)),
                  //     ),
                  //     child: Text(
                  //       'ADD',
                  //       style: TextStyle(
                  //         fontSize: 20,
                  //         fontFamily: 'Poppins',
                  //         color: Colors.white,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
