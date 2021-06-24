import 'dart:convert';
import 'dart:io';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:prototype_1/models/user_model.dart';

class ApiProvider {

  final url = Uri.https("jsonplaceholder.typicode.com", "/comments");

  Future<void> emptyCache() async {
    final cacheDir = await getTemporaryDirectory();

    if (cacheDir.existsSync()) {
      cacheDir.deleteSync(recursive: true);
    }
  }

  Future<void> deleteAppDir() async {
    final appDir = await getApplicationSupportDirectory();
    print(appDir.path);
    if(appDir.existsSync()){
      appDir.deleteSync(recursive: true);
    }
  }

  Future<User> getUserData() async {

    String fileName = "user.json";
    var dir = await getTemporaryDirectory();

    File file = File(dir.path + "/" + fileName);

    if (file.existsSync()) {
      print("reading from cache");

      //read
      final data = file.readAsStringSync();
      final res = json.decode(data);
      var user = User.fromJson(res);
      print('read ${user.age}');
      return user;
    }

    return null;
  }

  Future registerUser(String jsonBody) async {
    String fileName = "user.json";
    var dir = await getTemporaryDirectory();

    File file = File(dir.path + "/" + fileName);
    print(dir.path);
    if (file.existsSync()) {
      print("reading from cache");

      //read
      final data = file.readAsStringSync();
      final res = json.decode(data);
      print(res);
      return res;
    }
    else {

      //save to json cache
      print("save cache");
      file.writeAsStringSync(jsonBody, flush: true, mode: FileMode.write);
    }
  }

  Future updateUser(String jsonBody) async {
    String fileName = "user.json";
    var dir = await getTemporaryDirectory();

    File file = File(dir.path + "/" + fileName);
    print(dir.path);

    final updatedUser = User.fromJson(json.decode(jsonBody));

    //save to json cache
    print("update cache");
    file.writeAsStringSync(json.encode(updatedUser), flush: true, mode: FileMode.write);
  }

  Future getData() async {

    String fileName = "data.json";
    var dir = await getTemporaryDirectory();
    
    File file = File(dir.path + "/" + fileName);

    if (file.existsSync()) {
      print("reading from cache");

      //read
      final data = file.readAsStringSync();
      final res = json.decode(data);

      return res;
    }
    else {
      print("fetching from the network");

      final req = await http.get(url);
      //fetch
      if (req.statusCode == 200) {
        final body = req.body;

        //save to json cache
        file.writeAsStringSync(body, flush: true, mode: FileMode.write);
        
        final res = json.decode(body);
        print("ok");
        return res;
      }
      else {
        print("ERROR WHILE FETCHING");
        return json.decode(req.body);
      }
    }
  }
}