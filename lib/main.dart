	import 'package:flutter/material.dart';

main() => runApp(PerguntasApp());

class PerguntasApp extends StatelessWidget {
 
void responder() {
   print ('pergunta respondida')
}

@override
  Widget build(BuildContext context) {
    
    final List<String>perguntas = [
    'Qual é sua cor favorita',
    'Qual é seu animal de estimação',

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
          onPressed: ()=>print('resposta 1'),
        ), 
       RaisedButton(
         child:Text('Resposta 2'),
          onPressed: ()=>print('resposta 2'),
        ), 
       RaisedButton(
         child:Text('Resposta 3'),
          onPressed: ()=>print('resposta 3'),
        ), 
],
),
    ),
    );
  }
}
