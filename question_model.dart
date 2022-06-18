class Question {
  final int id;
  final int answer;
  final String question;
  final List<String> options;

  Question({required this.id,required this.question,required this.answer,required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Which animal is known as the 'Ship of the Desert?",
    "options": ['Horse', 'Lion', 'Camel', 'Tiger'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question":
        "Who is the developer of Flutter ?",
    "options": ['Google', 'Apple', 'LG', 'MicroSoft'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question":
        "Which animal is known as the 'Ship of the Desert?",
    "options": ['Horse', 'Lion', 'Camel', 'Tiger'],
    "answer_index": 4,
  },
  {
    "id": 4,
    "question":
        "Which animal is known as the 'King of the Desert?",
    "options": ['Horse', 'Lion', 'Camel', 'Tiger'],
    "answer_index": 3,
  },
];