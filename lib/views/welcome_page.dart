import 'package:flutter/material.dart';
import 'package:prototype_1/models/user_model.dart';
import 'my_home_page.dart';
import 'register_page.dart';
import 'package:prototype_1/services/api.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  API api;
  var user = User.empty();

  bool invalidCredentials = false;

  /*void setupAPI() async {
    API api = new API();
    //var res = await api.getUserById(1);
    //user = new User.fromObject(res);
  }*/

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    api = new API();
  }
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {FocusScope.of(context).unfocus();},
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Color(0xff1e6f5c),
        //   title: Text(
        //     'Login',
        //     style: TextStyle(
        //       color: Colors.white,
        //     ),
        //   ),
        //   centerTitle: true,
        // ),
        backgroundColor: Color(0xff079cd8),
        body: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/oversight-logo.png',
                    // height: 300,
                    width: 300,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Hi, There!',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 7.0),

                  Text(
                    'Please Choose One:',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.0,
                      color: Color(0xff96d3ee),
                    ),
                  ),

                  SizedBox(height: 20.0),

                  Container(
                    width: 300,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => RegisterPage()),);
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: BorderSide(
                            color: Color(0xff96d3ee),
                            width: 2.0,
                          ),
                        )),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                        backgroundColor: MaterialStateProperty.all(Color(0xff079cd8)),
                      ),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          letterSpacing: 2.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ), // Sign Up button

                  SizedBox(height: 30.0),

                  Container(
                    width: 300,
                    child: TextButton(
                      onPressed: () async {
                        // LOGIN METHOD GOES HERE
                        var res = true;//await login();
                        if (!res) {
                          setState(() {
                            invalidCredentials = true;
                          });
                        }
                        else {
                          setState(() {
                            invalidCredentials = false;
                          });
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyHomePage()),);
                        }
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: BorderSide(
                            color: Color(0xff96d3ee),
                            width: 2.0,
                          ),
                        )),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                        backgroundColor: MaterialStateProperty.all(Color(0xff079cd8)),
                      ),
                      child: Text(
                        'LOG IN',
                        style: TextStyle(
                          letterSpacing: 2.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ), // Login button

                  SizedBox(height: 50.0),

                  Text(
                    'Or',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.0,
                      color: Color(0xff96d3ee),
                    ),
                  ),
                  Text(
                    'Sign in / Log in With',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.0,
                      color: Color(0xff96d3ee),
                    ),
                  ),

                  SizedBox(height: 30.0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xff3dade0),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.google,
                            color: Colors.white,
                          ),
                          onPressed: () {

                          },
                        ),
                      ),

                      SizedBox(width: 20.0),

                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xff3dade0),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.white,
                          ),
                          onPressed: () {

                          },
                        ),
                      ),

                      SizedBox(width: 20.0),

                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xff3dade0),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          ),
                          onPressed: () {

                          },
                        ),
                      ),
                    ],
                  )


                  // TextButton(
                  //   onPressed: () {print('clicked');},
                  //   child: Text(
                  //     'Forgot password?',
                  //     textAlign: TextAlign.right,
                  //     style: TextStyle(
                  //       fontSize: 16.0,
                  //       decoration: TextDecoration.underline,
                  //     ),
                  //   ),
                  // ),

                  // if (invalidCredentials) Text(
                  //   'Invalid Credentials',
                  //   style: TextStyle(
                  //     color: Colors.red,
                  //     fontSize: 17,
                  //     fontWeight: FontWeight.bold,
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

  Future<bool> login() async {

    user.email = usernameController.text;
    user.password = passwordController.text;
    var res = await api.login(user);
    print(res);
    return res;
  }
}
