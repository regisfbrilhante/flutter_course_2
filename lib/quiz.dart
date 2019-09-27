import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';




class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questoes;
  final int indiceQuestoes;
  final Function respostaEscolhida;

  Quiz({@required this.questoes,
        @required this.respostaEscolhida,
        @required this.indiceQuestoes,
        });



  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Question(
              questoes[indiceQuestoes]['questionText'],
            ),
            ...(questoes[indiceQuestoes]['answers'] as List<String>)
                .map((answer) {
              return Answer(respostaEscolhida, answer);
            }).toList()
          ],
        );
         
  }
}