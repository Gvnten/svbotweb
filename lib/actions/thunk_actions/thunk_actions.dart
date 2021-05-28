import 'dart:convert';
import 'package:bot_web/actions/AnswerListAction.dart';
import 'package:bot_web/actions/ErrorMsg.dart';
import 'package:bot_web/middleware/api.dart';
import 'package:bot_web/middleware/sharedPreferences.dart';
import 'package:bot_web/redux/app_state.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:http/http.dart' as http;

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
        store.state.answerList.add(
          resbody[0]['text'],
        );

        store.dispatch(
          new AnswerListAction(
            answerList: store.state.answerList,
          ),
        );
      }
      print(
        "Асуултын жагсаалтын урт: " +
            store.state.questionList.length.toString(),
      );
      print("Асуултын жагсаалт: " + store.state.questionList.toString());
      print(
        "Хариултын жагсаалтын урт: " + store.state.answerList.length.toString(),
      );
      print("Хариултын жагсаалт: " + store.state.answerList.toString());
    } catch (e) {
      store.dispatch(ErrorMsg(message: e.toString()));
    }
  };
}

ThunkAction<AppState> postFeedback(int index) {
  return (Store<AppState> store) async {
    try {
      //String token = await SharedPref.getTempToken();
      //var apiUrl = 'conversations/tseegii/messages';
      //var createUrl = Api().baseUrl + apiUrl;
      final response = await http.post(
        Uri.parse('http://lawyer-bot.epizy.com/wp-json/lb_feedback/save'),
        body: jsonEncode(
          {
            'question': store.state.questionList[index],
            'answer': store.state.answerList[index],
            'rating': store.state.ratingList[index],
          },
        ),
        headers: {
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Methods': 'POST',
          //'Access-Control-Allow-Headers': '*',
          'Content-type': 'application/json',
          'Accept': 'application/json',
        },
      );
      //final resbody = json.decode(response.body);
      if (response.statusCode == 200) {}
    } catch (e) {
      //store.dispatch(ErrorMsg(message: e.toString()));
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
