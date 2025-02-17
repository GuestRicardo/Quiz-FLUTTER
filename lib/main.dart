	import 'package:flutter/material.dart';

main() => runApp(PerguntasApp());

class PerguntasApp extends StatelessWidget {
  const PerguntasApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(),
      home: Scafffold(
      appBar(
       title: Text('Perguntas'),
   ),
      body: Text('Ola Flutter')
    ),
    );
  }
}
