import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_5.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../redux/app_state.dart';

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ScrollController scrollController = new ScrollController();
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) => new Container(
        alignment: Alignment.bottomCenter,
        width: 400,
        height: 400,
        color: Colors.white,
        child: new ListView.builder(
          //controller: scrollController,
          padding: const EdgeInsets.all(15),
          shrinkWrap: true,
          itemCount: state.answerquestionlist.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 11),
              child: new Wrap(
                children: [
                  index % 2 == 0
                      ? new ChatBubble(
                          backGroundColor: Color(0xff1278bd),
                          margin: const EdgeInsets.only(left: 70),
                          alignment: Alignment.centerRight,
                          clipper: new ChatBubbleClipper5(
                            type: BubbleType.sendBubble,
                          ),
                          child: new Text(
                            "${state.answerquestionlist[index]}",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      : Wrap(
                          children: [
                            new ChatBubble(
                              margin: const EdgeInsets.only(right: 70),
                              backGroundColor: Colors.white70,
                              clipper: new ChatBubbleClipper5(
                                type: BubbleType.receiverBubble,
                              ),
                              child: Text(
                                "${state.answerquestionlist[index]}",
                                style: TextStyle(
                                    //color: Colors.white,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Align(
                                alignment: Alignment.center,
                                child: RatingBar.builder(
                                  onRatingUpdate: (rate) {
                                    print(rate);
                                    print(index);
                                  },
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Color(0xff1278bd),
                                  ),
                                  itemCount: 5,
                                  itemSize: 30.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
