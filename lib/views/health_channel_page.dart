import 'package:flutter/material.dart';
import 'package:prototype_1/views/event_page.dart';
import 'package:prototype_1/views/ministry_social_feed_page.dart';

class HealthChannel extends StatefulWidget {
  @override
  _HealthChannelState createState() => _HealthChannelState();
}

class _HealthChannelState extends State<HealthChannel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HEALTH CHANNEL',
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
                  SizedBox(height: 15.0),

                  TextButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Event()),);
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
                            'EVENTS',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
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
                  ), // calorie counter

                  SizedBox(height: 15.0),

                  TextButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MinistrySocialFeed()),);
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
                            'MINISTRY SOCIAL FEED',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
