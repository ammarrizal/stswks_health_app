import 'dart:convert';
import 'package:prototype_1/models/user_model.dart';
import 'package:http/http.dart' as http;

class API {

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
      //Map data = jsonDecode(response.body);

      //print(data);
    }
    catch (e) {
      print("error : $e");
    }
  }

  Future updateUserById(int id, User user) async {
    try {
      print("update is ${User.fromObject(user)}");
      // 192.168.1.103:45456
      var url = Uri.http('192.168.1.106:55000', '/api/user/$id');
      var response = await http.patch(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: User.fromObject(user)
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

  Map<String, String> header = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };

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