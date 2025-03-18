import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'resposta': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'texto': 'Qual é seu animal favorito??',
        'resposta': ['Veado', 'Coelho', 'Macaco', 'Cachorro'],
      },
      {
        'texto': 'Quando o Brasil foi descoberto?',
        'resposta': ['1800', '1500', '1300', '1600'],
      },
    ];

    List<String> respostas =
        perguntas[_perguntaSelecionada]['resposta'] as List<String>;
    List<Widget> widgets =
        respostas.map((t) => Resposta(t, _responder)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Perguntas')),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto'] as String),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
          ],

          //[
          //   Questao(perguntas[_perguntaSelecionada]['texto'] as String),
          //   Resposta('Resposta 1', _responder),
          //   Resposta('Resposta 2', _responder),
          //   Resposta('Resposta 3', _responder),
          //   Resposta('Resposta 4', _responder),
          // ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
