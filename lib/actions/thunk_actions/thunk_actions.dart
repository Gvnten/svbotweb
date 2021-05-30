import 'dart:convert';
import 'package:bot_web/actions/Other/AnswerListAction.dart';
import 'package:bot_web/actions/Other/ErrorMsg.dart';
import 'package:bot_web/actions/Other/UpdateFeedbackListaction.dart';
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
      var apiUrl = 'conversations/$store.state.userName/messages';
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
        store.state.ratingList.add(null);
        store.dispatch(
          new AnswerListAction(
            answerList: store.state.answerList,
          ),
        );
      }
    } catch (e) {
      store.dispatch(ErrorMsg(message: e.toString()));
    }
  };
}

ThunkAction<AppState> postFeedback(int index) {
  return (Store<AppState> store) async {
    try {
      await http.post(Uri.parse('http://35.229.235.9/wp-json/lb_feedback/save'),
          body: jsonEncode(
            {
              "question": store.state.questionList[index],
              "answer": store.state.answerList[index],
              "rating": store.state.ratingList[index],
            },
          ),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
          });
    } catch (e) {
      store.dispatch(
        ErrorMsg(
          message: e.toString(),
        ),
      );
    }
  };
}

// ThunkAction<AppState> updateFeedbacklist() {
//   return (Store<AppState> store) async {
//     try {
//       final response = await http.get(
//         Uri.parse('http://35.229.235.9/wp-json/lb_feedback/get'),
//       );

//       final data = json.decode(response.body);

//       store.dispatch(
//         new UpdateFeedbackListaction(
//           updateFeedbackList: data,
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
