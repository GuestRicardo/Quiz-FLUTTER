import 'package:flutter/material.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

Questionario({
  required this.perguntas,
  required this.perguntaSelecionada,
  required this.responder,
});
  @override
  Widget build(BuildContext context) {
     List<String> respostas =
        temPerguntaSelecionada
            ? _perguntas[_perguntaSelecionada]['resposta'] as List<String>
            : [];
    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'] as String),
        ...respostas.map((t) => Resposta(t, responder)),
      ],
    );
  }
}
