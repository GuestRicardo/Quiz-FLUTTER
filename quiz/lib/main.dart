import 'package:flutter/material.dart';

void main() {
  runApp(PerguntaApp());
}
//classe para gerenciar o estado do app
class PerguntaApp extends StatefulWidget {
  @override
  int perguntaSelecionada = 0;

  PerguntaApp({super.key});

  void responder() {
    perguntaSelecionada++;
    print('Perguta respondida!');
  }
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text('Quiz App')),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}


class PerguntaApp extends StatelessWidget {

  const PerguntaApp({super.key});


  @override
}
