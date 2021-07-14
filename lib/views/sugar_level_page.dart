import 'package:flutter/material.dart';
import 'package:prototype_1/services/api.dart';

class SugarLevel extends StatefulWidget {
  @override
  _SugarLevelState createState() => _SugarLevelState();
}

class _SugarLevelState extends State<SugarLevel> {

  var vitalFuture = API().getVitalById(2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SUGAR LEVEL',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff079cd8),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
              future: vitalFuture,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    child: Text(
                      'Sugar level : ${snapshot.data.sugarLevel}',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 21.0,
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),

          ],
        ),
      ),
    );
  }
}
