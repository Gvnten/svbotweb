import 'dart:convert';
import 'package:http/http.dart' as http;

import 'sharedPreferences.dart';

class Api {
  final String baseUrl = 'http://34.69.70.73/api/';

  getToken() async {
    var apiUrl = 'auth';
    var createUrl = baseUrl + apiUrl;
    final response = await http.post(
      Uri.parse(createUrl),
      body: jsonEncode({
        'username': 'me',
        'password': 'Tseegii123',
      }),
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      },
    );
    final body = json.decode(response.body);
    String token = body['access_token'];

    await SharedPref.setTempToken(token);
  }
}