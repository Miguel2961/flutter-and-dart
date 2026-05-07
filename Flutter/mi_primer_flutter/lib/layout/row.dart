import 'package:flutter/material.dart';

class RowExample extends StatefulWidget {
  const RowExample({super.key});

  @override
  State<RowExample> createState() => _RowExampleState();
}

class _RowExampleState extends State<RowExample> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 86),
      child: SizedBox(
        height: double.infinity,
        child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        
          children: [
            // Spacer(),
            Text('Ejemplo 1'),
            Text('Ejemplo 2'),
            Text('Ejemplo 3'),
          ],
        ),
      ),
    );
  }
}