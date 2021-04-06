import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {FocusScope.of(context).unfocus();},
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1e6f5c),
          title: Text(
            widget.title,
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
                  SizedBox(height: 10),
                  Container(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {/*print('clicked');*/},
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
                      onPressed: () {/*print('clicked');*/},
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
}
