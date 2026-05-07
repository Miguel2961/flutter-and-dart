import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        Text('texto basico'),
        Text('texto grande', style: TextStyle(fontSize: 24)),
        Text(
          'texto grande',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Text('texto curvado', style: TextStyle(fontStyle: FontStyle.italic)),
        Text(
          'texto grande',
          style: TextStyle(
            color: Colors.red,
            backgroundColor: Colors.amberAccent,
          ),
        ),
        Text(
          'Decorator',
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            fontSize: 30,
            color: Colors.blue,
            decorationColor: Colors.amberAccent,
          ),
        ),
        Text(
          'espacio entre letras',
          style: TextStyle(letterSpacing: 5, fontSize: 30),
        ),
        Text(
          'texto largo texto largo texto largo texto largo texto largo texto largo texto largo texto largo texto largo texto largo texto largo texto largo',
          style: TextStyle(fontSize: 30),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
      ],
    );
  }
}
