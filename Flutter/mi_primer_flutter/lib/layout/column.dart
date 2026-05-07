import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});
  // Para contenido de columnas
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 63, 144, 210),
      width: double.infinity,
      
      child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text('hola como estas?? muy bien y pos como la pasas ??'),
        Text('hola como estas ??'),
        Text('hola como estas ??'),
        Text('hola como estas ??'),
        Text('hola como estas ??'),
        Text('hola como estas ??'),
      ],
    ),
    );
    
  }
}
