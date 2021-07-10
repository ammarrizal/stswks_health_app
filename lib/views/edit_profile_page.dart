import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:prototype_1/models/user_model.dart';
import 'package:prototype_1/services/api.dart';
import 'package:prototype_1/services/jsonProvider.dart';
import 'package:prototype_1/views/my_home_page.dart';
import 'package:prototype_1/views/user_profile_info.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {

  final _formKey = GlobalKey<FormState>();
  final user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EDIT PROFILE',
          style: TextStyle(
            letterSpacing: 2.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            //fontSize: 26,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff079cd8),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  FutureBuilder(
                    future: API().getUserById(1),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 35.0),
                          child: Column(
                            children: [
                              Text(
                                'Username',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Color(0xff282846),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                width: 300,
                                child: TextFormField(
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0.0), // 30 previously
                                    ),
                                  ),
                                  initialValue: snapshot.data.userName,
                                  onSaved: (input) => user.userName = input,
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      else {
                        return const Text('No data');
                      }
                    },
                  ),
                  FutureBuilder(
                    future: API().getUserById(1),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 35.0),
                          child: Column(
                            children: [
                              Text(
                                'Phone',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Color(0xff282846),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                width: 300,
                                child: TextFormField(
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0.0), // 30 previously
                                    ),
                                  ),
                                  initialValue: snapshot.data.phone,
                                  onSaved: (input) => user.phone = input,
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      else {
                        return const Text('No data');
                      }
                    },
                  ),
                  FutureBuilder(
                    future: API().getUserById(1),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 35.0),
                          child: Column(
                            children: [
                              Text(
                                'Identification Number',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Color(0xff282846),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                width: 300,
                                child: TextFormField(
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0.0), // 30 previously
                                    ),
                                  ),
                                  initialValue: snapshot.data.identificationNumber,
                                  onSaved: (input) => user.identificationNumber = input,
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      else {
                        return const Text('No data');
                      }
                    },
                  ),
                  FutureBuilder(
                    future: API().getUserById(1),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 35.0),
                          child: Column(
                            children: [
                              Text(
                                'Age',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Color(0xff282846),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                width: 300,
                                child: TextFormField(
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0.0), // 30 previously
                                    ),
                                  ),
                                  initialValue: snapshot.data.age.toString(),
                                  onSaved: (input) => user.age = int.parse(input),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      else {
                        return const Text('No data');
                      }
                    },
                  ),
                  FutureBuilder(
                    future: API().getUserById(1),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 35.0),
                          child: Column(
                            children: [
                              Text(
                                'Height',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Color(0xff282846),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                width: 300,
                                child: TextFormField(
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0.0), // 30 previously
                                    ),
                                  ),
                                  initialValue: snapshot.data.height.toString(),
                                  onSaved: (input) => user.height = double.parse(input),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      else {
                        return const Text('No data');
                      }
                    },
                  ),
                  FutureBuilder(
                    future: API().getUserById(1),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 35.0),
                          child: Column(
                            children: [
                              Text(
                                'Weight',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Color(0xff282846),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                width: 300,
                                child: TextFormField(
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0.0), // 30 previously
                                    ),
                                  ),
                                  initialValue: snapshot.data.weight.toString(),
                                  onSaved: (input) => user.weight = double.parse(input),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      else {
                        return const Text('No data');
                      }
                    },
                  ),
                  FutureBuilder(
                    future: API().getUserById(1),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 35.0),
                          child: Column(
                            children: [
                              Text(
                                'Medication',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Color(0xff282846),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                width: 300,
                                child: TextFormField(
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0.0), // 30 previously
                                    ),
                                  ),
                                  initialValue: snapshot.data.medicines.toString(),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      else {
                        return const Text('No data');
                      }
                    },
                  ),
                  FutureBuilder(
                    future: API().getUserById(1),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 35.0),
                          child: Column(
                            children: [
                              Text(
                                'Supplementary',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Color(0xff282846),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                width: 300,
                                child: TextFormField(
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0.0), // 30 previously
                                    ),
                                  ),
                                  // TODO: change medication to supplementary
                                  initialValue: snapshot.data.supplementaries.toString(),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      else {
                        return const Text('No data');
                      }
                    },
                  ),
                  // buildTextField("Full Name", "Some Name"),
                  // buildTextField("Phone Number", "012345678"),
                  // buildTextField("Identification Number", "111 222 333"),
                  // buildTextField("Age", "23"),
                  // buildTextField("Height", "1.75 cm"),
                  // buildTextField("Weight", "60 Kg"),
                  // buildTextField("Medication", "..."),
                  // buildTextField("Supplementary", "..."),

                  SizedBox(height: 5),
                  // Container(
                  //   width: 300,
                  //   child: ElevatedButton(
                  //     onPressed: () async {},
                  //     style: ButtonStyle(
                  //       shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(40.0),
                  //       )),
                  //       padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                  //       backgroundColor: MaterialStateProperty.all(Color(0xff1e6f5c)),
                  //     ),
                  //     child: Text(
                  //       'Save',
                  //       style: TextStyle(
                  //         fontSize: 20,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  Container(
                    width: 300,
                    child: TextButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();
                          print(user.userName);
                          print(user.age);
                          user.id = 0;
                          user.medicines = [];
                          user.supplementaries = [];
                          var x = user.toJson();
                          print(x["id"]);
                          //ApiProvider().emptyCache();
                          //ApiProvider().deleteAppDir();
                          ApiProvider().updateUser(json.encode(user));

                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => MyHomePage(),
                            ),
                                (route) => false,
                          );

                          // Navigator.push(context,
                          //   MaterialPageRoute(builder: (context) => MyHomePage()),);
                        }
                      },
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
                          letterSpacing: 2.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ), // Save button
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, String placeholder,
      {bool isPassword = false, bool isEmail = false, bool isDigit = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: Column(
        children: [
          Text(
            labelText,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Color(0xff282846),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: 300,
            child: TextFormField(
              style: TextStyle(
                fontFamily: 'Poppins',
              ),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0), // 30 previously
                  ),
              ),
              initialValue: placeholder,
            ),
          ),
        ],
      ),
    );
  }
}
