import 'package:rest_apis/model/user_dob.dart';
import 'package:rest_apis/model/user_location.dart';
import 'package:rest_apis/model/user_name.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserDob dob;
  final UserLocation location;

  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    required this.dob,
    required this.location,
  });

  factory User.fromMap(Map<String, dynamic> e) {
    final name = UserName(
      title: e['name']['title'],
      first: e['name']['first'],
      last: e['name']['last'],
    );

    final date = e['dob']['date'];
    final dob = UserDob(
      age: e['dob']['age'],
      date: DateTime.parse(date),
    );

    final location = UserLocation.fromMap(e['location']);

    return User(
      cell: e['cell'],
      email: e['email'],
      gender: e['gender'],
      nat: e['nat'],
      phone: e['phone'],
      name: name,
      dob: dob,
      location: location,
    );
  }

  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}
