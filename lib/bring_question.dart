import 'package:mul_quize_2/question.dart';

// ignore: camel_case_types
class bring_question{
  int questionnumber=0;
  
   final List<question> _question_sorce=[
    question(
      "The sun rises from which direction?",
       ["the East","the West","the South"],
       // index of answer---
        0
        ),
        ///------------------
         question(
      "What is the least dense gas?",
       ["oxygen","hydrogen","Nitrogen"],
       // index of answer---
        1
        ),
        question(
      "The sun rises from which direction?",
       ["the East","the West","the South"],
       // index of answer---
        0
        ),
        ///------------------
         question(
      "What is the least dense gas?",
       ["oxygen","hydrogen","Nitrogen"],
       // index of answer---
        1
        ),
         question(
      "The sun rises from which direction?",
       ["the East","the West","the South"],
       // index of answer---
        0
        ),
        ///------------------
         question(
      "What is the least dense gas?",
       ["oxygen","hydrogen","Nitrogen"],
       // index of answer---
        1
        ),

         question(
      "The sun rises from which direction?",
       ["the East","the West","the South"],
       // index of answer---
        0
        ),
        ///------------------
         question(
      "What is the least dense gas?",
       ["oxygen","hydrogen","Nitrogen"],
       // index of answer---
        1
        ),

         question(
      "The sun rises from which direction?",
       ["the East","the West","the South"],
       // index of answer---
        0
        ),
        ///------------------
         question(
      "What is the least dense gas?",
       ["oxygen","hydrogen","Nitrogen"],
       // index of answer---
        1
        ),

  ];

   String gitqustiontext(){
    return _question_sorce[questionnumber].questiontext;
  }
  String gitchoise(int x){
    return _question_sorce[questionnumber].choice[x];
  }

  int gitqustionanswer(){
    return _question_sorce[questionnumber].questionanswerindex;
  }

  void nextquestion (){
    if (questionnumber<_question_sorce.length-1) {
      questionnumber++;
    }
    }
  bool isfinished(){
    if (questionnumber==_question_sorce.length-1) {
      return true;
  }
  else
  return false;
  }

  void reset(){
    questionnumber=0;
  }
int gitlingth(){
  return _question_sorce.length;
}
int gitqustionanswerbyx(int x){
  return _question_sorce[x].questionanswerindex;
}
}