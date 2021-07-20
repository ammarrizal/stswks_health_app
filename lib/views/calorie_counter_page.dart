import 'package:flutter/material.dart';
import 'package:prototype_1/models/calorie_model.dart';
import 'package:prototype_1/services/api.dart';
import 'package:prototype_1/views/consumed_food_page.dart';
import 'package:prototype_1/views/cycling_page.dart';
import 'package:prototype_1/views/my_home_page.dart';
import 'package:prototype_1/views/running_page.dart';
import 'package:prototype_1/views/third_party_app_config.dart';
import 'package:prototype_1/views/third_party_app_page.dart';
//import 'package:prototype_1/views/calorie_counter.dart';
import 'package:prototype_1/views/walking_page.dart';

class CalorieCounter extends StatefulWidget {
  @override
  _CalorieCounterState createState() => _CalorieCounterState();
}

class _CalorieCounterState extends State<CalorieCounter> {

  final _formKey = GlobalKey<FormState>();
  var calories = CalorieModel();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'CALORIE COUNTER',
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

                    SizedBox(height: 20.0),
                    Form(
                      key: _formKey,
                      child: Container(
                        child: Column(
                          children: [
                            FutureBuilder(
                              future: API().getCalorieById(1),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return Text(
                                    'Overall calorie : ${snapshot.data.overallCalories}',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18.0,
                                    ),
                                  );
                                }
                                else {
                                  return CircularProgressIndicator();
                                }
                              },
                            ),
                            SizedBox(height: 20.0),

                            Text(
                              'Input optimal daily calorie intake',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            TextFormField(
                              onSaved: (input) => calories.overallCalories = int.parse(input),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                //fontSize: 18.0,
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.0), // 30
                                ),
                                hintText: 'Enter your calorie intake',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),



                    SizedBox(height: 15.0),
                    Container(
                      width: 400,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();

                            print('update is ${calories.overallCalories}');
                            //TODO: Change user id dynamically
                            calories.id = 1;

                            API().updateCalorieById(1, calories);

                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => MyHomePage(),
                              ),
                                  (route) => false,
                            );
                          }
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          )),
                          padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                          backgroundColor: MaterialStateProperty.all(Color(0xff079cd8)),
                        ),
                        child: Text(
                          'SAVE',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ), // save

                    SizedBox(height: 15.0),

                    // TextButton(
                    //   onPressed: (){
                    //     Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => OverallCounter()),);
                    //   },
                    //   style: ButtonStyle(
                    //     shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(0.0) // 40,
                    //     )),
                    //     padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                    //     backgroundColor: MaterialStateProperty.all(Color(0xff079cd8)),
                    //   ),
                    //   child: Row(
                    //     children: [
                    //       Expanded(
                    //         child: Text(
                    //           'CALORIE COUNTER',
                    //           style: TextStyle(
                    //             fontFamily: 'Poppins',
                    //             fontWeight: FontWeight.bold,
                    //             fontSize: 20,
                    //             color: Colors.white,
                    //           ),
                    //         ),
                    //       ),
                    //       SizedBox(width: 15.0),
                    //       Icon(
                    //         Icons.arrow_forward_rounded,
                    //         color: Colors.white,
                    //       ),
                    //     ],
                    //   ),
                    // ), // calorie counter

                    SizedBox(height: 0.0),

                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ConsumedFood()),);
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
                              'CONSUMED FOOD',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
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

                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ThirdPartyAppPage()),);
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
                              'ADD 3RD PARTY APPLICATION',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
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
                    ), // add 3rd party app

                    SizedBox(height: 15.0),

                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ThirdPartyAppConfigPage()),);
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
                              'CONFIGURE 3RD PARTY APPLICATION',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
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
                    ), // config 3rd party app

                    SizedBox(height: 15.0),

                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Running()),);
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
                              'RUNNING',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
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
                    ),// running

                    SizedBox(height: 15.0),

                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Walking()),);
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
                              'WALKING',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
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
                    ), // walking

                    SizedBox(height: 15.0),

                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cycling()),);
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
                              'CYCLING',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
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
                    ), // cycling
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
