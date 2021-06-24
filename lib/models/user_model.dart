import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  int id;
  String userName;
  String firstName;
  String lastName;
  String email;
  String password;
  String phone;
  String identificationNumber;
  int age;
  double height;
  double weight;
  List<Medicine> medicines;

  int get Id => id;

  User.empty() {
    id = 0;
    firstName = "";
    lastName = "";
    userName = "";
    email = "";
    password = "";
    phone = "";
    identificationNumber = "";
    age = 0;
    height = 0;
    weight = 0;

  }

  User({ this.id, this.userName, this.firstName, this.lastName, this.email, this.password, this.phone,
    this.identificationNumber, this.age, this.height, this.weight, this.medicines});

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    userName: json["userName"],
    email: json["email"],
    password: json["password"],
    phone: json["phone"],
    identificationNumber: json["identificationNumber"],
    age: json["age"],
    height: json["height"],
    weight: json["weight"],
    medicines: List<Medicine>.from(json["medicines"].map((x) => Medicine.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "firstName": firstName,
    "lastName": lastName,
    "userName": userName,
    "email": email,
    "password": password,
    "phone": phone,
    "identificationNumber": identificationNumber,
    "age": age,
    "height": height,
    "weight": weight,
    "medicines": List<dynamic>.from(medicines.map((x) => x.toJson())),
  };

  User.fromObject(dynamic obj) {
    id = obj["id"];
    firstName = obj["firstName"];
    lastName = obj["lastName"];
    email = obj["email"];
    password = obj["password"];
    phone = obj["phone"];
    identificationNumber = obj["identificationNumber"];
    age = obj["age"];
    height = obj["height"];
    weight = obj["weight"];
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    map["id"] = id;
    map["firstName"] = firstName;
    map["lastName"] = lastName;
    map["email"] = email;
    map["password"] = password;
    map["phone"] = phone;
    map["identificationNumber"] = identificationNumber;
    map["age"] = age;
    map["height"] = height;
    map["weight"] = weight;

    return map;
  }
}

class Medicine {
  Medicine({
    this.name,
  });

  String name;

  factory Medicine.fromJson(Map<String, dynamic> json) => Medicine(
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
  };
}
