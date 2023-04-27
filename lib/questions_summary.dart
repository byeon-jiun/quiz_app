import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary (this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  Color isAnswer (a, b) {
    if (a == b) {
      return Colors.green;
    }
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: [ ...summaryData.map(
            (data) {
              var userAnswer = data['user_answer'];
              var correctAnswer = data['correct_answer'];

              return Row(
                children: [
                  Text(((data['question_index'] as int) + 1).toString()),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          data['question'] as String,
                          style: GoogleFonts.lato(
                            color: Colors.white,
                          ),),
                        const SizedBox(height: 10,),
                        Text(
                           '$userAnswer',
                          style: GoogleFonts.lato(
                            color: isAnswer(userAnswer, correctAnswer),
                          ),
                        ),
                        const SizedBox(height: 3,),
                        Text(
                         '$correctAnswer',
                          style: GoogleFonts.lato(
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}