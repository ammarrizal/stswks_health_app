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
  List<Supplementary> supplementaries;

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
    this.identificationNumber, this.age, this.height, this.weight, this.medicines, this.supplementaries});

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["Id"],
    firstName: json["FirstName"],
    lastName: json["LastName"],
    userName: json["Username"],
    email: json["Email"],
    password: json["Password"],
    phone: json["Phone"],
    identificationNumber: json["IdentificationNumber"],
    age: json["Age"],
    height: json["Height"],
    weight: json["Weight"],
    //medicines: List<Medicine>.from(json["Medicines"].map((x) => Medicine.fromJson(x))),
    //supplementaries: List<Supplementary>.from(json["Supplementaries"].map((x) => Supplementary.fromJson(x))),
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
    "supplementaries": List<dynamic>.from(supplementaries.map((x) => x.toJson())),
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
class Supplementary {
  Supplementary({
    this.name,
  });

  String name;

  factory Supplementary.fromJson(Map<String, dynamic> json) => Supplementary(
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
  };
}
