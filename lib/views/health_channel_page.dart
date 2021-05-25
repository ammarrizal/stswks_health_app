import 'package:flutter/material.dart';

class HealthChannel extends StatefulWidget {
  @override
  _HealthChannelState createState() => _HealthChannelState();
}

class _HealthChannelState extends State<HealthChannel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Channel'),
        backgroundColor: Color(0xff1e6f5c),
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

                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => null),);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      )),
                      padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                      backgroundColor: MaterialStateProperty.all(Color(0xff1e6f5c)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Events',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Icon(
                          Icons.arrow_forward_rounded,
                        ),
                      ],
                    ),
                  ), // calorie counter

                  SizedBox(height: 15.0),

                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => null),);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      )),
                      padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                      backgroundColor: MaterialStateProperty.all(Color(0xff1e6f5c)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Ministry social feed',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Icon(
                          Icons.arrow_forward_rounded,
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
