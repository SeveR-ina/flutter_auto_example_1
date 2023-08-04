import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart' show rootBundle;

import './user_details.model.dart';

class UserDetail {
  late String someEnv;

  UserDetail() {
    someEnv = const String.fromEnvironment('ENV');
  }

  Future<UserDetails> getUserDetails() async {
    String detailsSource = await rootBundle.loadString('assets/json/test_user_data.json');
    final userCredentials = json.decode(detailsSource)[this.someEnv]['user'];

    // We are returning one User from list of Users
    return UserDetails.fromJson(userCredentials[Random().nextInt(userCredentials.length)]);
  }
}
