class Feedback {
  int id;
  String question;
  String answer;
  double rating;

  Feedback({
    this.id,
    this.question,
    this.answer,
    this.rating,
  });

  Feedback.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    answer = json['answer'];
    rating = json['rating'];
  }

  // Map<String, dynamic> toJson() => {
  //       "id": id,
  //       "question": question,
  //       "answer": answer,
  //       "rating": rating,
  //     };
}
