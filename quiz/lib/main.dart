import 'package:flutter/material.dart';
import './perguntas.dart';

void main() => runApp(Comecar());

const _questionario = PerguntaApp();

class Comecar extends StatelessWidget {
  const Comecar({super.key});

  @override
  Widget build(BuildContext context) {
    return
     SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.blue),
          foregroundColor: WidgetStateProperty.all(Colors.white),
        ),

        onPressed: () => _questionario,
        child: const Text('Começar'),
      ),
    );
  }
}

//_questionario,
