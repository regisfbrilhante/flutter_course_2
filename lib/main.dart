import 'package:flutter/material.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int indicesQuestoes = 0;
  var _questoes = [
    {
      'questionText': 'Qual sua cor favorita?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'Qual seu animal favorito?',
      'answers': ['Leão', 'Cobra', 'Elefante', 'Cachorro']
    },
    {
      'questionText': 'Qual sua linguagem de programação favorita?',
      'answers': ['Python', 'Dart', 'Java', 'PhP']
    },
  ];

  void _respostaEscolhida() {
    setState(() {
      indicesQuestoes = indicesQuestoes + 1;
      print(indicesQuestoes);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Second APP!'),
        ),
        body: indicesQuestoes < _questoes.length
            ? Quiz(
                respostaEscolhida: _respostaEscolhida,
                indiceQuestoes: indicesQuestoes,
                questoes: _questoes,
              )
            : Center(
                child: Text("Completou!"),
              ),
      ),
    );
  }
}
