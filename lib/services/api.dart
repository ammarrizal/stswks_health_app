import 'dart:convert';
import 'package:prototype_1/models/user_model.dart';
import 'package:http/http.dart' as http;

class API {

  Future getUserById(int id) async {
    try {
      var url = Uri.https('192.168.1.103:45456', '/api/user/$id');
      var response = await http.get(url);
      print(jsonDecode(response.body));
      return jsonDecode(response.body);
      //Map data = jsonDecode(response.body);

      //print(data);
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
      var url = Uri.https('192.168.1.103:45456', '/api/user/login');
      var response = await http.post(url, headers: header, body: userBody);
      //print('res code = ${response.statusCode}');
      return Future.value(response.statusCode == 200 ? true : false);
    }
    catch (e) {
      print("error : $e");
    }

  }
}