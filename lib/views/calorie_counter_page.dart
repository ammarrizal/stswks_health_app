import 'package:flutter/material.dart';
import 'package:prototype_1/views/third_party_app_page.dart';
import 'package:prototype_1/views/calorie_counter.dart';

class CalorieCounter extends StatefulWidget {
  @override
  _CalorieCounterState createState() => _CalorieCounterState();
}

class _CalorieCounterState extends State<CalorieCounter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calorie Counter'),
        backgroundColor: Color(0xff1e6f5c),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Input optimal daily calorie intake',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  //controller: sugarLevelController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: 'Enter your calorie intake',
                  ),
                ),
                SizedBox(height: 15.0),
                ElevatedButton(
                  onPressed: () async {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    )),
                    padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0)),
                    backgroundColor: MaterialStateProperty.all(Color(0xff1e6f5c)),
                  ),
                  child: Text(
                    'Save',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),

                SizedBox(height: 15.0),

                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OverallCounter()),);
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
                          'Calorie Counter',
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
                ),

                SizedBox(height: 15.0),

                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OverallCounter()),);
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
                          'Consumed Food',
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
                ),

                SizedBox(height: 15.0),

                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThirdPartyAppPage()),);
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
                          'Add 3rd party application',
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
                ),

                SizedBox(height: 15.0),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
