import 'dart:convert';
import 'package:http/http.dart' as http;

import 'sharedPreferences.dart';

class Api {
  final String baseUrl = 'https://lawyerback.xyz/api/';

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
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Headers':
            'DNT, X-Mx-ReqToken, Keep-Alive, User-Agent, X-Requested-With, If-Modified-Since, Cache-Control,Content-Type,',
        'Content-type': 'application/json',
        'Accept': 'application/json',
      },
    );
    final body = json.decode(response.body);
    String token = body['access_token'];

    await SharedPref.setTempToken(token);
  }

  getFeedbacklist() async {
    final response = await http.get(
      Uri.parse('https://www.lawyerbot.xyz/wp-json/lb_feedback/get'),
    );

    final feedbackList = json.decode(response.body);
    return feedbackList;
  }

  getNewsList() async {
    final response = await http.get(
      Uri.parse('https://www.lawyerbot.xyz/wp-json/wp/v2/posts'),
    );

    final newsList = json.decode(response.body);
    return newsList;
  }
}
