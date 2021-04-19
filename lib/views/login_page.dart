import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prototype_1/models/user_model.dart';
import 'my_home_page.dart';
import 'register_page.dart';
import 'package:prototype_1/services/api.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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
        appBar: AppBar(
          backgroundColor: Color(0xff1e6f5c),
          title: Text(
            'Login',
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
                  Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: usernameController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          hintText: 'Enter your username'
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: passwordController,
                      textAlign: TextAlign.center,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          hintText: 'Enter your password'
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {print('clicked');},
                    child: Text(
                      'Forgot password?',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16.0,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  if (invalidCredentials) Text(
                    'Invalid Credentials',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () async {
                        // LOGIN METHOD GOES HERE
                        var res = await login();
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
                          borderRadius: BorderRadius.circular(40.0),
                        )),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                        backgroundColor: MaterialStateProperty.all(Color(0xff1e6f5c)),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 300,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => RegisterPage()),);
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          side: BorderSide(
                            width: 2.5,
                            color: Color(0xff1e6f5c),
                          ),
                        )),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                        //backgroundColor: MaterialStateProperty.all(Color(0xff1e6f5c)),
                      ),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      ),
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

  Future<bool> login() async {

    user.email = usernameController.text;
    user.password = passwordController.text;
    var res = await api.login(user);
    print(res);
    return res;
  }
}
