import 'dart:convert';
import 'package:prototype_1/models/calorie_model.dart';
import 'package:prototype_1/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:prototype_1/models/vital_model.dart';
import 'package:intl/intl.dart';

class API {
  Map<String, String> header = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };

  Future getUserById(int id) async {
    try {
      // 192.168.1.103:45456
      var url = Uri.http('192.168.1.106:55000', '/api/user/$id');
      var response = await http.get(url); // body json string

      var data = Map<String, dynamic>.from(jsonDecode(response.body));
      print(data);
      var user = User.fromJson(data);
      print("user id is : " + user.userName.toString());
      return user;
    }
    catch (e) {
      print("error : $e");
    }
  }

  Future updateUserById(int id, User user) async {
    try {
      //print("update is ${json.encode(user)}");
      // 192.168.1.103:45456
      var url = Uri.http('192.168.1.106:55000', '/api/user/$id');
      var response = await http.patch(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode(user)
      );
      print(response.statusCode);
      return user;
    }
    catch (e) {
      print("error : $e");
    }
  }

  Future addUser(User user) async {
    try {
      //print("update is ${User.fromObject(user)}");
      // 192.168.1.103:45456
      print(user.toJson());
      var url = Uri.http('192.168.1.106:55000', '/api/users');
      var response = await http.post(
          url,
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: json.encode(user.toJson())
      );
      print('insert res = ' + response.statusCode.toString());
      return user;
    }
    catch (e) {
      print("error : $e");
    }
  }

  Future getVitalById(int id) async {
    try {
      // 192.168.1.103:45456
      var url = Uri.http('192.168.1.106:55000', '/api/vital/$id');
      var response = await http.get(url); // body json string

      var data = Map<String, dynamic>.from(jsonDecode(response.body));
      print(data);
      var vital = VitalModel.fromJson(data);
      print("vital id is : " + vital.id.toString());
      return vital;
    }
    catch (e) {
      print("error : $e");
    }
  }

  Future updateVitalById(int id, VitalModel vital) async {
    try {
      //print(vital.pulse);
      print("update from api is ${DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(vital.testDate)}");
      // 192.168.1.103:45456
      var url = Uri.http('192.168.1.106:55000', '/api/vital/$id');
      var response = await http.patch(
          url,
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: json.encode(vital)
      );
      print(response.statusCode);
      return vital;
    }
    catch (e) {
      print("error : $e");
    }
  }

  Future getCalorieById(int id) async {
    try {
      // 192.168.1.103:45456
      var url = Uri.http('192.168.1.106:55000', '/api/calorie/$id');
      var response = await http.get(url); // body json string

      var data = Map<String, dynamic>.from(jsonDecode(response.body));
      print(data);
      var calorie = VitalModel.fromJson(data);
      print("vital id is : " + calorie.id.toString());
      return calorie;
    }
    catch (e) {
      print("error : $e");
    }
  }

  Future updateCalorieById(int id, CalorieModel calorie) async {
    try {
      //print(vital.pulse);
      //print("update from api is ${DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(vital.testDate)}");
      // 192.168.1.103:45456
      var url = Uri.http('192.168.1.106:55000', '/api/calorie/$id');
      var response = await http.patch(
          url,
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: json.encode(calorie)
      );
      print(response.statusCode);
      return calorie;
    }
    catch (e) {
      print("error : $e");
    }
  }

  Future<bool> login(User user) async {

    try {
      var _user = user.toMap(); // to json object
      var userBody = json.encode(_user);
      //print(_user);
      var url = Uri.https('192.168.1.106:45456', '/api/user/login');
      var response = await http.post(url, headers: header, body: userBody);
      //print('res code = ${response.statusCode}');
      return Future.value(response.statusCode == 200 ? true : false);
    }
    catch (e) {
      print("error : $e");
    }

  }
}