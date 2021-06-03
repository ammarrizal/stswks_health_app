import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[


                buildTextField("Full Name", "Some Name"),
                buildTextField("Phone Number", "012345678"),
                buildTextField("Identification Number", "111 222 333"),
                buildTextField("Age", "23"),
                buildTextField("Height", "1.75 cm"),
                buildTextField("Weight", "60 Kg"),
                buildTextField("Medication", "..."),
                buildTextField("Supplementary", "..."),

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
