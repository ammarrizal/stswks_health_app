class User {
  int id;
  String firstName;
  String lastName;
  String email;
  String password;
  String phone;
  String identificationNumber;
  int age;
  double height;
  double weight;

  int get Id => id;

  User.empty() {
    id = 0;
    firstName = "";
    lastName = "";
    email = "";
    password = "";
    phone = "";
    identificationNumber = "";
    age = 0;
    height = 0;
    weight = 0;
  }

  User({ this.id, this.firstName, this.lastName, this.email, this.password, this.phone,
    this.identificationNumber, this.age, this.height, this.weight});

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
