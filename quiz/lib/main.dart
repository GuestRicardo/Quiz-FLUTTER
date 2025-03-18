import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
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

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas =
        temPerguntaSelecionada
            ? _perguntas[_perguntaSelecionada]['resposta'] as List<String>
            : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Perguntas')),
        body:
            temPerguntaSelecionada
                ? Column(
                  children: <Widget>[
                    Questao(
                      _perguntas[_perguntaSelecionada]['texto'] as String,
                    ),
                    ...respostas.map((t) => Resposta(t, _responder)),
                  ],
                )
                : Center(
                  child: Text(
                    'Parabéns!',
                    style: const TextStyle(fontSize: 50),
                  ),
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
