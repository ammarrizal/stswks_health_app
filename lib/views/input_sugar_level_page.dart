import 'package:flutter/material.dart';

class InputSugarLevel extends StatefulWidget {
  @override
  _InputSugarLevelState createState() => _InputSugarLevelState();
}

class _InputSugarLevelState extends State<InputSugarLevel> {

  final sugarLevelController = TextEditingController();
  final testTimeController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    sugarLevelController.dispose();
    testTimeController.dispose();
    super.dispose();
  }

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
                TextFormField(
                  controller: sugarLevelController,
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
                ),
                SizedBox(height: 15.0),
                Container(
                  width: 400,
                  child: TextButton(
                    onPressed: () async {},
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

                SizedBox(height: 25.0),

                Text(
                  'Test time',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  controller: testTimeController,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0), // 30 previously
                    ),
                    hintText: 'Enter the test time',
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  width: 400,
                  child: TextButton(
                    onPressed: () async {},
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
                      'ADD',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
