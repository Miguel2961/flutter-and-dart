import 'package:flutter/material.dart';

class TextFieldExample extends StatelessWidget {
  const TextFieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 60),
        TextField(),
        SizedBox(height: 32),
        TextField(),
        SizedBox(height: 32),
        TextField(decoration: InputDecoration(hintText: 'introduce tu email')),
        SizedBox(height: 32),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'introduce tu correo',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(height: 32),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'introduce tu contreaseña',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.insert_chart_outlined_sharp),
            ),
          ),
        ),
        SizedBox(height: 32),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'introduce tu correo',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(height: 32),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            maxLines: 1,
            maxLength: 10,

            decoration: InputDecoration(
              hintText: 'introduce tu comentario',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
