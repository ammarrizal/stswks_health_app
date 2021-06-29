import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:prototype_1/constants.dart';
import 'package:prototype_1/views/calorie_counter_page.dart';
import 'package:prototype_1/views/health_channel_page.dart';
import 'package:prototype_1/views/vital_tracker_page.dart';
import 'medical_assist_page.dart';
import 'user_profile_info.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Welcome, \n",
                            style: kTitleStyle.copyWith(
                              fontSize: 30.0,
                              color: kGrey2Color,
                            ),
                          ),
                          TextSpan(
                            text: "User Name",
                            style: kTitleStyle.copyWith(
                              fontSize: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage("assets/default-user.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 55.0,
                margin: EdgeInsets.symmetric(horizontal: 18.0),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                decoration: BoxDecoration(
                  color: kGrey1Color,
                  //remove this to get rid of the border
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: TextField(
                    style: TextStyle(fontSize: 25),
                    decoration: InputDecoration(
                      isCollapsed: true,
                      hintText: "Search",
                      icon: Icon(
                        FontAwesomeIcons.search,
                        size: 20.0,
                        color: Colors.black54,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                width: double.infinity,
                height: 150.0,
                margin: EdgeInsets.symmetric(horizontal: 18.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: kBlue2Color,
                  //color: HexColor("#24abe3")
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 15.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Do you have any symptoms\nof COVID-19?",
                              style: kTitleStyle,
                            ),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              child: SizedBox(
                                height: 30.0,
                                width: 150.0,
                                child: Center(
                                  child: Text(
                                    "Book an appointment",
                                    style: GoogleFonts.lato(
                                      textStyle: TextStyle(fontSize: 14.0),
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/healthcare1.png",
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "Modules",
                  style: kTitleStyle,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              //first row of modules
              Container(
                //width: double.infinity,
                height: 80.0,
                margin: EdgeInsets.symmetric(horizontal: 18.0),
                //color is used for debug
                //color: HexColor("#ff8a8a"),
                child: Row(
                  children: [
                    HealthModules(
                      title: "Profile",
                      color: "#D9F8FB",
                      icon: FontAwesomeIcons.userCircle,
                      pageTo: UserProfilePage(),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    HealthModules(
                      title: "Vital Tracker",
                      color: "#D9F8FB",
                      icon: Icons.watch,
                      pageTo: VitalTracker(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              //second row of modules
              Container(
                width: double.infinity,
                height: 80.0,
                margin: EdgeInsets.symmetric(horizontal: 18.0),
                //color is used for debug
                //color: HexColor("#ff8a8a"),
                child: Row(
                  children: [
                    HealthModules(
                      title: "Calorie\nCounter",
                      color: "#D9F8FB",
                      icon: FontAwesomeIcons.hamburger,
                      pageTo: CalorieCounter(),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    HealthModules(
                      title: "Health\nChannel",
                      color: "#D9F8FB",
                      icon: FontAwesomeIcons.newspaper,
                      pageTo: HealthChannel(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              //third row of modules
              Container(
                width: double.infinity,
                height: 80.0,
                margin: EdgeInsets.symmetric(horizontal: 18.0),
                //color is used for debug
                //color: HexColor("#ff8a8a"),
                child: Row(
                  children: [
                    HealthModules(
                      title: "Medical\nAssist",
                      color: "#D9F8FB",
                      icon: FontAwesomeIcons.medkit,
                      pageTo: MedicalAssist(),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    HealthModules(
                      title: "Medical\nRecords",
                      color: "#D9F8FB",
                      icon: FontAwesomeIcons.fileMedicalAlt,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              //fourth row of modules
              Container(
                width: double.infinity,
                height: 80.0,
                margin: EdgeInsets.symmetric(horizontal: 18.0),
                //color is used for debug
                //color: HexColor("#ff8a8a"),
                child: Row(
                  children: [
                    HealthModules(
                      title: "My\nMedicine",
                      color: "#D9F8FB",
                      icon: FontAwesomeIcons.prescriptionBottle,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    HealthModules(
                      title: "Virtual\nMonitoring",
                      color: "#D9F8FB",
                      icon: FontAwesomeIcons.stethoscope,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HealthModules extends StatelessWidget {
  final String title;
  final String color;
  final IconData icon;
  final Widget pageTo;
  HealthModules({this.title, this.color, this.icon, this.pageTo});

  @override
  Widget build(BuildContext context) {
    //return Expanded(
    return Container(
      height: double.infinity,
      width: 180.0,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => pageTo));
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: kGrey2Color,
              width: 2.0,
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: HexColor(color),
                ),
                child: Center(
                  child: FaIcon(
                    icon,
                    size: 35.0,
                    color: Color(0xFF5e5e5e),
                  ),
                ),
              ),
              SizedBox(
                width: 12.0,
              ),
              Text(
                title,
                style: GoogleFonts.lato(
                    textStyle: TextStyle(fontSize: 14.0),
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
