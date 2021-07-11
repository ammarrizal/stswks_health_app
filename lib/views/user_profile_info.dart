import 'package:flutter/material.dart';
import 'package:prototype_1/models/user_model.dart';
import 'package:prototype_1/services/api.dart';
import 'package:prototype_1/services/jsonProvider.dart';
import 'package:prototype_1/views/edit_profile_page.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  var userFuture = API().getUserById(1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PROFILE',
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
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10, 10, 10),
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                )),
                backgroundColor: MaterialStateProperty.all(Color(0xff3dade0)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfilePage()),
                );
              },
              child: Text(
                'Edit Profile',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
        // Commented as navigator push add return button automatically
        /*leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),*/
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 4,
                        color: Theme.of(context).scaffoldBackgroundColor),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0, 10)),
                    ],
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.pexels.com/photos/158827/field-corn-air-frisch-158827.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260")),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                /*Divider(
                  color: Colors.black87,
                  thickness: 2.0,
                ),*/
                SizedBox(
                  height: 2.0,
                  width: 400,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        colors: [Color(0xff800080), Color(0xffef5349)],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                FutureBuilder(
                  future: userFuture,
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
                            Text(
                              snapshot.data.userName,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                  // child: Padding(
                  //   padding: const EdgeInsets.only(bottom: 35.0),
                  //   child: Column(
                  //     children: [
                  //       Text(
                  //         labelText,
                  //         style: TextStyle(
                  //           fontFamily: 'Poppins',
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 20.0,
                  //           color: Color(0xff282846),
                  //         ),
                  //       ),
                  //       SizedBox(height: 10.0),
                  //       Text(
                  //         placeholder.toString(),
                  //         style: TextStyle(
                  //           fontFamily: 'Poppins',
                  //           fontSize: 20.0,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),
                FutureBuilder(
                  future: userFuture,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 35.0),
                        child: Column(
                          children: [
                            Text(
                              'Phone Number',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Color(0xff282846),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              snapshot.data.phone.toString(),
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                  // child: Padding(
                  //   padding: const EdgeInsets.only(bottom: 35.0),
                  //   child: Column(
                  //     children: [
                  //       Text(
                  //         labelText,
                  //         style: TextStyle(
                  //           fontFamily: 'Poppins',
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 20.0,
                  //           color: Color(0xff282846),
                  //         ),
                  //       ),
                  //       SizedBox(height: 10.0),
                  //       Text(
                  //         placeholder.toString(),
                  //         style: TextStyle(
                  //           fontFamily: 'Poppins',
                  //           fontSize: 20.0,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),
                FutureBuilder(
                  future: userFuture,
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
                            Text(
                              snapshot.data.identificationNumber.toString(),
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                  // child: Padding(
                  //   padding: const EdgeInsets.only(bottom: 35.0),
                  //   child: Column(
                  //     children: [
                  //       Text(
                  //         labelText,
                  //         style: TextStyle(
                  //           fontFamily: 'Poppins',
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 20.0,
                  //           color: Color(0xff282846),
                  //         ),
                  //       ),
                  //       SizedBox(height: 10.0),
                  //       Text(
                  //         placeholder.toString(),
                  //         style: TextStyle(
                  //           fontFamily: 'Poppins',
                  //           fontSize: 20.0,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),
                FutureBuilder(
                  future: userFuture,
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
                            Text(
                              snapshot.data.age.toString(),
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                  // child: Padding(
                  //   padding: const EdgeInsets.only(bottom: 35.0),
                  //   child: Column(
                  //     children: [
                  //       Text(
                  //         labelText,
                  //         style: TextStyle(
                  //           fontFamily: 'Poppins',
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 20.0,
                  //           color: Color(0xff282846),
                  //         ),
                  //       ),
                  //       SizedBox(height: 10.0),
                  //       Text(
                  //         placeholder.toString(),
                  //         style: TextStyle(
                  //           fontFamily: 'Poppins',
                  //           fontSize: 20.0,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),
                FutureBuilder(
                  future: userFuture,
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
                            Text(
                              snapshot.data.height.toString(),
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                  // child: Padding(
                  //   padding: const EdgeInsets.only(bottom: 35.0),
                  //   child: Column(
                  //     children: [
                  //       Text(
                  //         labelText,
                  //         style: TextStyle(
                  //           fontFamily: 'Poppins',
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 20.0,
                  //           color: Color(0xff282846),
                  //         ),
                  //       ),
                  //       SizedBox(height: 10.0),
                  //       Text(
                  //         placeholder.toString(),
                  //         style: TextStyle(
                  //           fontFamily: 'Poppins',
                  //           fontSize: 20.0,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),
                FutureBuilder(
                  future: userFuture,
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
                            Text(
                              snapshot.data.weight.toString(),
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                  // child: Padding(
                  //   padding: const EdgeInsets.only(bottom: 35.0),
                  //   child: Column(
                  //     children: [
                  //       Text(
                  //         labelText,
                  //         style: TextStyle(
                  //           fontFamily: 'Poppins',
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 20.0,
                  //           color: Color(0xff282846),
                  //         ),
                  //       ),
                  //       SizedBox(height: 10.0),
                  //       Text(
                  //         placeholder.toString(),
                  //         style: TextStyle(
                  //           fontFamily: 'Poppins',
                  //           fontSize: 20.0,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),
                FutureBuilder(
                  future: userFuture,
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
                            Text(
                              snapshot.data.medicines.toString(),
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                  // child: Padding(
                  //   padding: const EdgeInsets.only(bottom: 35.0),
                  //   child: Column(
                  //     children: [
                  //       Text(
                  //         labelText,
                  //         style: TextStyle(
                  //           fontFamily: 'Poppins',
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 20.0,
                  //           color: Color(0xff282846),
                  //         ),
                  //       ),
                  //       SizedBox(height: 10.0),
                  //       Text(
                  //         placeholder.toString(),
                  //         style: TextStyle(
                  //           fontFamily: 'Poppins',
                  //           fontSize: 20.0,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),
                FutureBuilder(
                  future: userFuture,
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
                            Text(
                              snapshot.data.supplementaries.toString(),
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                  // child: Padding(
                  //   padding: const EdgeInsets.only(bottom: 35.0),
                  //   child: Column(
                  //     children: [
                  //       Text(
                  //         labelText,
                  //         style: TextStyle(
                  //           fontFamily: 'Poppins',
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 20.0,
                  //           color: Color(0xff282846),
                  //         ),
                  //       ),
                  //       SizedBox(height: 10.0),
                  //       Text(
                  //         placeholder.toString(),
                  //         style: TextStyle(
                  //           fontFamily: 'Poppins',
                  //           fontSize: 20.0,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),
                // buildTextField("Phone Number", "012345678"),
                // buildTextField("Identification Number", "111 222 333"),
                // buildTextField("Age", "23"),
                // buildTextField("Height", "1.75 cm"),
                // buildTextField("Weight", "60 Kg"),
                // buildTextField("Medication", "..."),
                // buildTextField("Supplementary", "..."),
                SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, dynamic placeholder) {
    return FutureBuilder(
      future: userFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
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
                Text(
                  snapshot.data.userName,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          );
        } else {
          return Text('');
        }
      },
      // child: Padding(
      //   padding: const EdgeInsets.only(bottom: 35.0),
      //   child: Column(
      //     children: [
      //       Text(
      //         labelText,
      //         style: TextStyle(
      //           fontFamily: 'Poppins',
      //           fontWeight: FontWeight.bold,
      //           fontSize: 20.0,
      //           color: Color(0xff282846),
      //         ),
      //       ),
      //       SizedBox(height: 10.0),
      //       Text(
      //         placeholder.toString(),
      //         style: TextStyle(
      //           fontFamily: 'Poppins',
      //           fontSize: 20.0,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
