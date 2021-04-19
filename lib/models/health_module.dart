import 'package:flutter/material.dart';
import 'package:prototype_1/constants.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HealthModules extends StatelessWidget {
  final String title;
  final String color;
  final IconData icon;
  final String pageTo;
  HealthModules({this.title, this.color, this.icon, this.pageTo});

  @override
  Widget build(BuildContext context) {
    //return Expanded(
    return Container(
      height: double.infinity,
      width: 180.0,
      child: InkWell(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => pageTo),
          // );
          Navigator.of(context).pushNamed(pageTo);
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
