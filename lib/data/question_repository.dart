import '../models/question.dart';
class QuestionRepository {
  static List<Question> getQuestions(){
    return [
      Question(
        id: 1,
        content: "Ano ang pambansang ibon?",
        choices: ["Manok","Maya","Agila","Lamok"],
        answer: "Lamok"
      ),
      Question(
        id: 1,
        content: "Anong ibon ang bumibisita sa iran pag gabi?",
        choices: ["Manok","Maya","Agila"," F-15E Strike Eagle"], 
        answer: "Lamok"
      ),
    ];
  }
}