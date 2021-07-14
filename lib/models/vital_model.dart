// To parse this JSON data, do
//
//     final vitalModel = vitalModelFromJson(jsonString);

import 'dart:convert';
import 'package:intl/intl.dart';

VitalModel vitalModelFromJson(String str) => VitalModel.fromJson(json.decode(str));

String vitalModelToJson(VitalModel data) => json.encode(data.toJson());

class VitalModel {
  VitalModel({
    this.id,
    this.pulse,
    this.bloodPressure,
    this.temp,
    this.vo2Max,
    this.rrIntervals,
    this.sugarLevel,
    this.testDate,
  });

  int id;
  int pulse;
  double bloodPressure;
  double temp;
  double vo2Max;
  int rrIntervals;
  int sugarLevel;
  DateTime testDate;

  factory VitalModel.fromJson(Map<String, dynamic> json) => VitalModel(
    id: json["Id"],
    pulse: json["Pulse"],
    bloodPressure: json["BloodPressure"].toDouble(),
    temp: json["Temp"].toDouble(),
    vo2Max: json["VO2Max"].toDouble(),
    rrIntervals: json["RRIntervals"],
    sugarLevel: json["SugarLevel"],
    testDate: DateTime.parse(json["TestDate"]),
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "Pulse": pulse,
    "BloodPressure": bloodPressure,
    "Temp": temp,
    "VO2Max": vo2Max,
    "RRIntervals": rrIntervals,
    "SugarLevel": sugarLevel,
    "TestDate": DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(testDate),
  };
}
