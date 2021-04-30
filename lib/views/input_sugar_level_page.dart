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
        title: Text(' Input sugar level'),
        backgroundColor: Color(0xff1e6f5c),
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
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  controller: sugarLevelController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      hintText: 'Enter your blood sugar level',
                  ),
                ),
                SizedBox(height: 15.0),
                ElevatedButton(
                  onPressed: () async {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    )),
                    padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                    backgroundColor: MaterialStateProperty.all(Color(0xff1e6f5c)),
                  ),
                  child: Text(
                    'Save',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),

                SizedBox(height: 25.0),

                Text(
                  'Test time',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  controller: testTimeController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: 'Enter the test time',
                  ),
                ),
                SizedBox(height: 15.0),
                ElevatedButton(
                  onPressed: () async {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    )),
                    padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                    backgroundColor: MaterialStateProperty.all(Color(0xff1e6f5c)),
                  ),
                  child: Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
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
