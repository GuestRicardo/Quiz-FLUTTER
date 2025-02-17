import 'package:flutter/material.dart';

main() => runApp(const PerguntasApp());

class PerguntasApp extends StatelessWidget {
  const PerguntasApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(),
      home: const Text('ola flutter'),
    );
  }
}
