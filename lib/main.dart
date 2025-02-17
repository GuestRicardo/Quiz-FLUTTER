	import 'package:flutter/material.dart';

main() => runApp(PerguntasApp());
  final List<String>perguntas = [
    'Qual é sua cor favorita',
    'Qual é seu animal de estimação',

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
      body: Column(
      children: <widget>[
       Text(perguntas[0]),
       RaisedButton(
         child:Text('Resposta 1'),
          onPressed: null,
        ), 
       RaisedButton(
         child:Text('Resposta 2'),
          onPressed: null,
        ), 
       RaisedButton(
         child:Text('Resposta 3'),
          onPressed: null,
        ), 
],
),
    ),
    );
  }
}
