import 'package:bot_web/actions/thunk_actions/thunk_actions.dart';
import 'package:bot_web/redux/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_5.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) => Container(
        color: Colors.grey[50],
        child: new Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          alignment: Alignment.bottomCenter,
          width: 400,
          height: 400,
          //color: Colors.white70,
          child: new ListView.builder(
            padding: const EdgeInsets.all(15),
            shrinkWrap: true,
            itemCount: state.questionList.length,
            itemBuilder: (context, index) {
              return new Padding(
                padding: const EdgeInsets.only(top: 11),
                child: new Column(
                  children: [
                    new ChatBubble(
                      backGroundColor: Color(0xff1278bd),
                      margin: const EdgeInsets.only(left: 70),
                      alignment: Alignment.centerRight,
                      clipper: new ChatBubbleClipper5(
                        type: BubbleType.sendBubble,
                      ),
                      child: new Text(
                        "${state.questionList[index]}",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11),
                      child: new ChatBubble(
                        margin: const EdgeInsets.only(right: 70),
                        backGroundColor: Colors.grey,
                        clipper: new ChatBubbleClipper5(
                          type: BubbleType.receiverBubble,
                        ),
                        child: Text(
                          "${state.answerList[index]}",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Align(
                        alignment: Alignment.center,
                        child: Visibility(
                          visible: state.isRated == true &&
                                  state.ratingList[index] == null
                              ? true
                              : false,
                          child: RatingBar.builder(
                            onRatingUpdate: (rate) {
                              state.ratingList[index] = rate;
                              StoreProvider.of<AppState>(context).dispatch(
                                postFeedback(index),
                              );
                            },
                            glowColor: Colors.amber,
                            direction: Axis.horizontal,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
