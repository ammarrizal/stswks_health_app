import 'dart:convert';

CalorieModel calorieModelFromJson(String str) => CalorieModel.fromJson(json.decode(str));

String calorieModelToJson(CalorieModel data) => json.encode(data.toJson());

class CalorieModel {
  CalorieModel({
    this.id,
    this.overallCalories,
  });

  int id;
  int overallCalories;

  factory CalorieModel.fromJson(Map<String, dynamic> json) => CalorieModel(
    id: json["Id"],
    overallCalories: json["OverallCalories"],
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "OverallCalories": overallCalories,
  };
}