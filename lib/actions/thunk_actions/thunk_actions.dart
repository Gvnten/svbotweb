import 'dart:convert';
import 'package:bot_web/actions/ChatAction.dart';
import 'package:bot_web/actions/ErrorMsg.dart';
import 'package:bot_web/middleware/api.dart';
import 'package:bot_web/redux/app_state.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:http/http.dart' as http;
import '../../middleware/api.dart';
import '../../middleware/sharedPreferences.dart';
import '../../redux/app_state.dart';

final List<String> answerquestionlist = [];
final List<Map<String, dynamic>> aql = [];

ThunkAction<AppState> getConversation() {
  return (Store<AppState> store) async {
    try {
      // final response = await http.get(
      //   Uri.parse('https://api.chucknorris.io/jokes/random'),
      // );
      //final responseBody = json.decode(response.body);
      // store.dispatch(
      //   GetJoke(
      //     joke: responseBody['value'],
      //   ),
      // );
      //print(responseBody['value']);
    } catch (e) {
      store.dispatch(
        ErrorMsg(
          message: e.toString(),
        ),
      );
    }
  };
}

ThunkAction<AppState> postMessage() {
  return (Store<AppState> store) async {
    try {
      String token = await SharedPref.getTempToken();
      var apiUrl = 'conversations/tseegii/messages';
      var createUrl = Api().baseUrl + apiUrl;
      final response = await http.post(
        Uri.parse(createUrl),
        body: jsonEncode(
          {
            'sender': store.state.userName,
            'message': store.state.question,
          },
        ),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      final resbody = json.decode(response.body);
      if (response.statusCode == 200) {
        // aql.add(
        //   {
        //     'answer': resbody[0]['text'],
        //   },
        // );
        answerquestionlist.add(
          resbody[0]['text'],
        );
        store.dispatch(
          new ChatAction(
            answerquestionlist: answerquestionlist,
            //answerquestionlist: aql,
          ),
        );
      }
    } catch (e) {
      store.dispatch(ErrorMsg(message: e.toString()));
    }
  };
}

// ThunkAction<AppState> getToken() {
//   return (Store<AppState> store) async {
//     store.dispatch(Loading());
//     try {
//       var apiUrl = 'auth';
//       var createUrl = new Api().baseUrl + apiUrl;
//       final response = await http.post(
//         Uri.parse(createUrl),
//         body: jsonEncode(
//           {
//             'username': 'me',
//             'password': 'Tseegii123',
//           },
//         ),
//         headers: {
//           'Content-type': 'application/json',
//           'Accept': 'application/json',
//         },
//       );
//       final resbody = json.decode(response.body);
//       String token = resbody['access_token'];
//       store.dispatch(
//         new SetToken(
//           token: token,
//         ),
//       );
//     } catch (e) {
//       store.dispatch(
//         ErrorMsg(
//           message: e.toString(),
//         ),
//       );
//     }
//   };
// }
