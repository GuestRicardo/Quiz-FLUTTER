import 'package:flutter/material.dart';

void main() {
  runApp(PerguntaApp());
}

//classe para gerenciar o estado do app
class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;


  //metodo responsavel para incrementar as variaveis
  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
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

  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
