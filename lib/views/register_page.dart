import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1e6f5c),
          title: Text(
            'Register',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 30),
                  buildText("Username"),
                  SizedBox(height: 20.0),
                  buildTextField("Username"),
                  SizedBox(height: 30),
                  buildText("Password"),
                  SizedBox(height: 20.0),
                  buildTextField("Password", isPassword: true),
                  SizedBox(height: 30),
                  buildText("Confirm password"),
                  SizedBox(height: 20.0),
                  buildTextField("Confirm password", isPassword: true),
                  SizedBox(height: 30),
                  buildText("Email"),
                  SizedBox(height: 20.0),
                  buildTextField("Email", isEmail: true),
                  SizedBox(height: 30),
                  buildText("Phone number"),
                  SizedBox(height: 20.0),
                  buildTextField("Phone number", isDigit: true),
                  SizedBox(height: 30),
                  buildText("Identification number"),
                  SizedBox(height: 20.0),
                  buildTextField("Identification number"),
                  SizedBox(height: 30),
                  buildText("Age"),
                  SizedBox(height: 20.0),
                  buildTextField("Age", isDigit: true),
                  SizedBox(height: 30),
                  buildText("Weight"),
                  SizedBox(height: 20.0),
                  buildTextField("Weight", isDigit: true),
                  SizedBox(height: 30),
                  buildText("Height"),
                  SizedBox(height: 20.0),
                  buildTextField("Height", isDigit: true),
                  SizedBox(height: 30),
                  Container(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {/*print('clicked');*/},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        )),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff1e6f5c)),
                      ),
                      child: Text(
                        'Create account',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container buildTextField(String text,
      {bool isPassword = false, bool isEmail = false, bool isDigit = false}) {
    return Container(
      width: 300,
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            hintText: text),
        obscureText: isPassword ?? isPassword,
        keyboardType: isDigit ? TextInputType.number : TextInputType.text,
        inputFormatters: [
          isDigit
              ? FilteringTextInputFormatter.digitsOnly
              : FilteringTextInputFormatter.singleLineFormatter,
        ],
      ),
    );
  }

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
