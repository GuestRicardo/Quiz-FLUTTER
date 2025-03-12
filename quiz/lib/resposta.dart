import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  const Resposta(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all<Color>(
          const Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      
      onPressed: null,
      child: Text(texto),
    );
  }
}
