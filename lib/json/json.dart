import 'dart:convert';

class User {
  final String name;
  final String email;

  User(this.name, this.email);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  Map<String, dynamic> toJson() =>
    {
      'name': name,
      'email': email,
    };
}

main(List<String> args) {
  
  String jsonStr = "{\"name\": \"John Smith\",\"email\": \"john@example.com\"}";

  Map userMap = json.decode(jsonStr);
  var user = new User.fromJson(userMap);

  print('Howdy, ${user.name}!');
  print('We sent the verification link to ${user.email}.');

}
