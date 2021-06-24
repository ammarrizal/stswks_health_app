import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prototype_1/models/user_model.dart';
import 'package:prototype_1/services/jsonProvider.dart';
import 'package:prototype_1/views/my_home_page.dart';

class RegisterPage extends StatefulWidget {

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final _formKey = GlobalKey<FormState>();
  final user = User();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff079cd8),
          title: Text(
            'SIGN UP',
            style: TextStyle(
              letterSpacing: 2.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              //fontSize: 26,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 30),

                    buildText("Username"),
                    SizedBox(height: 20.0),
                    Container(
                      width: 300,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.0) // 30.0 previously,
                          ),
                          hintText: 'Username'
                        ),
                        //obscureText: isPassword ?? isPassword,
                        //keyboardType: isDigit ? TextInputType.number : TextInputType.text,
                        // inputFormatters: [
                        //   isDigit ? FilteringTextInputFormatter.digitsOnly : FilteringTextInputFormatter.singleLineFormatter,
                        // ],
                        onSaved: (input) => user.userName = input,
                      )
                    ),
                    SizedBox(height: 30),

                    buildText("Password"),
                    SizedBox(height: 20.0),
                    //buildTextField("Password", isPassword: true),
                    Container(
                        width: 300,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.0) // 30.0 previously,
                              ),
                              hintText: 'Password'
                          ),
                          obscureText: true,
                          //keyboardType: isDigit ? TextInputType.number : TextInputType.text,
                          // inputFormatters: [
                          //   isDigit ? FilteringTextInputFormatter.digitsOnly : FilteringTextInputFormatter.singleLineFormatter,
                          // ],
                          onSaved: (input) => user.password = input,
                        )
                    ),
                    SizedBox(height: 30),

                    buildText("Confirm password"),
                    SizedBox(height: 20.0),
                    //buildTextField("Confirm password", isPassword: true),
                    Container(
                        width: 300,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.0) // 30.0 previously,
                              ),
                              hintText: 'Confirm password'
                          ),
                          obscureText: true,
                          //keyboardType: isDigit ? TextInputType.number : TextInputType.text,
                          // inputFormatters: [
                          //   isDigit ? FilteringTextInputFormatter.digitsOnly : FilteringTextInputFormatter.singleLineFormatter,
                          // ],
                          //onSaved: (input) => user.userName = input,
                        )
                    ),
                    SizedBox(height: 30),

                    buildText("Email"),
                    SizedBox(height: 20.0),
                    //buildTextField("Email", isEmail: true),
                    Container(
                        width: 300,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.0) // 30.0 previously,
                              ),
                              hintText: 'Email'
                          ),
                          //obscureText: isPassword ?? isPassword,
                          //keyboardType: isDigit ? TextInputType.number : TextInputType.text,
                          // inputFormatters: [
                          //   isDigit ? FilteringTextInputFormatter.digitsOnly : FilteringTextInputFormatter.singleLineFormatter,
                          // ],
                          validator: (input) => !input.contains('@') ? 'Not a valid email' : null,
                          onSaved: (input) => user.email = input,
                        )
                    ),
                    SizedBox(height: 30),

                    buildText("Phone number"),
                    SizedBox(height: 20.0),
                    //buildTextField("Phone number", isDigit: true),
                    Container(
                        width: 300,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.0) // 30.0 previously,
                              ),
                              hintText: 'Phone number'
                          ),
                          //obscureText: isPassword ?? isPassword,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          onSaved: (input) => user.phone = input,
                        )
                    ),
                    SizedBox(height: 30),

                    buildText("Identification number"),
                    SizedBox(height: 20.0),
                    //buildTextField("Identification number"),
                    Container(
                        width: 300,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.0) // 30.0 previously,
                              ),
                              hintText: 'Identification number'
                          ),
                          //obscureText: isPassword ?? isPassword,
                          //keyboardType: isDigit ? TextInputType.number : TextInputType.text,
                          // inputFormatters: [
                          //   isDigit ? FilteringTextInputFormatter.digitsOnly : FilteringTextInputFormatter.singleLineFormatter,
                          // ],
                          onSaved: (input) => user.identificationNumber = input,
                        )
                    ),
                    SizedBox(height: 30),

                    buildText("Age"),
                    SizedBox(height: 20.0),
                    //buildTextField("Age", isDigit: true),
                    Container(
                        width: 300,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.0) // 30.0 previously,
                              ),
                              hintText: 'Age'
                          ),
                          //obscureText: isPassword ?? isPassword,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          onSaved: (input) => user.age = int.parse(input),
                        )
                    ),
                    SizedBox(height: 30),

                    buildText("Weight"),
                    SizedBox(height: 20.0),
                    //buildTextField("Weight", isDigit: true),
                    Container(
                        width: 300,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.0) // 30.0 previously,
                              ),
                              hintText: 'Weight'
                          ),
                          //obscureText: isPassword ?? isPassword,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          onSaved: (input) => user.weight = double.parse(input),
                        )
                    ),
                    SizedBox(height: 30),

                    buildText("Height"),
                    SizedBox(height: 20.0),
                    //buildTextField("Height", isDigit: true),
                    Container(
                        width: 300,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.0) // 30.0 previously,
                              ),
                              hintText: 'Height'
                          ),
                          //obscureText: isPassword ?? isPassword,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          onSaved: (input) => user.height = double.parse(input),
                        )
                    ),
                    SizedBox(height: 30),

                    // Container(
                    //   width: 300,
                    //   child: ElevatedButton(
                    //     onPressed: () {/*print('clicked');*/},
                    //     style: ButtonStyle(
                    //       shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(40.0),
                    //       )),
                    //       padding: MaterialStateProperty.all(
                    //           EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                    //       backgroundColor:
                    //       MaterialStateProperty.all(Color(0xff079cd8)),
                    //     ),
                    //     child: Text(
                    //       'Create account',
                    //       style: TextStyle(
                    //         fontSize: 20,
                    //         color: Colors.white,
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    Container( // CREATE ACCOUNT PAGE
                      width: 300,
                      child: TextButton(
                        onPressed: () {
                          // Navigator.push(context,
                          //   MaterialPageRoute(builder: (context) => RegisterPage()),);
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            print(user.userName);
                            print(user.age);
                            user.id = 0;
                            user.medicines = [];
                            var x = user.toJson();
                            print(x["id"]);
                            //ApiProvider().emptyCache();
                            //ApiProvider().deleteAppDir();
                            ApiProvider().registerUser(json.encode(user));

                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => MyHomePage()),);
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
                          'CREATE ACCOUNT',
                          style: TextStyle(
                            letterSpacing: 2.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ), // Create account button
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Container buildTextField(String text,
  //     {bool isPassword = false, bool isEmail = false, bool isDigit = false}) {
  //   return Container(
  //     width: 300,
  //     child: TextFormField(
  //       textAlign: TextAlign.center,
  //       decoration: InputDecoration(
  //           border: OutlineInputBorder(
  //             borderRadius: BorderRadius.circular(0.0) // 30.0 previously,
  //           ),
  //           hintText: text),
  //       obscureText: isPassword ?? isPassword,
  //       keyboardType: isDigit ? TextInputType.number : TextInputType.text,
  //       inputFormatters: [
  //         isDigit ? FilteringTextInputFormatter.digitsOnly : FilteringTextInputFormatter.singleLineFormatter,
  //       ],
  //       //onSaved: (input) => user.userName = input,
  //     ),
  //   );
  // }

  Widget buildText(String text) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
}
