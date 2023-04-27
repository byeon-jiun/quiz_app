
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget{

  const StartScreen(this.startQuiz, {super.key});

  final void Function () startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child : Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/pngegg.png',
            width: 200,
            height: 400,
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            '안녕하세요, 변지운 입니다.',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 18
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: Text('더 알아보기', style: GoogleFonts.lato(),),
          ),
        ],
      ),
    );
  }
}