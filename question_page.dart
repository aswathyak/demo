import 'package:demo_ui/ui/models/question_model.dart';
import 'package:flutter/material.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar : AppBar(
        // extendBodyBehindAppBar : true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
           Navigator.pop(context);
        }, 
        icon: const Icon(Icons.keyboard_arrow_left,
        color: Colors.white
         ),
        ),
        actions:  const [
          Icon(Icons.menu,
          color: Colors.white,
          ),
        ],
      ),
      body : Column(
        crossAxisAlignment : CrossAxisAlignment.start,
        children : [
          Row(),
          Expanded(
          child: PageView.builder(
            // scrollDirection: Axis.horizontal,
            itemCount: sample_data.length,
            itemBuilder : (context, index) =>    QuizQuestions(
              question: sample_data[index]['question'],
            ),
          ),
          ),
        ]
      ),
    );
  }
}

class QuizQuestions extends StatelessWidget {
  const QuizQuestions({
    Key? key,
    required this.question
  }) : super(key: key);
  final String question;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children :const  [
              Text.rich(
                TextSpan(
                  text: "Question 1",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
                  children: [
                    TextSpan(
                      text: "/4",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800 )
                    ), 

                   
                  ]
                ),
              ),
               Icon(Icons.more_vert, color: Colors.black,)
            ]
          ),
         const SizedBox(
          height: 10,
         ),
         Text(question,
        // Text(sample_data[0]['question'],
        style: const TextStyle(color : Colors.black, fontWeight: FontWeight.w600),
        ),
           const SizedBox(
          height: 10,
         ),
         AnswerOptions(ans : "A. Horse", onPress: (){},),
         AnswerOptions(ans : "B. Lion",onPress: (){},),
         AnswerOptions(ans : "C. Camel", onPress: (){},),
         AnswerOptions(ans : "D. Tiger",onPress: (){},),
        const  SizedBox(
          height: 60,
        ),
        ElevatedButton(
           style: ButtonStyle(
                  foregroundColor : MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:  MaterialStateProperty.all<Color>(Colors.orange),
                  shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius : BorderRadius.circular(18.0),
                    ),
                    
                  ),
                ),
                onPressed: (){},
                child: const Center(
                  child:  SizedBox(
                    child: Text('Submit', style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                 ),
        ),
        ],
      ),
    );
  }
}

class AnswerOptions extends StatelessWidget {
  const AnswerOptions({
    Key? key,
    required this.ans,
    required this.onPress,
  }) : super(key: key);
 final String ans;
 final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16),
        decoration:   BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey),
          borderRadius: BorderRadius.circular(30),
        ),
        child:  Text(ans,
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}