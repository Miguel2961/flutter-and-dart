import 'package:flutter/material.dart';
// import 'package:mi_primer_flutter/Components/button.dart';
// import 'package:mi_primer_flutter/Components/image.dart';
// import 'package:mi_primer_flutter/Components/textfield.dart';
// import 'package:mi_primer_flutter/Components/text.dart';
// import 'package:mi_primer_flutter/layout/column.dart';
// import 'package:mi_primer_flutter/layout/row.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // El Scaffold es el componente base de una pantalla es el esqueleto
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mi super APP"),// Es la parte superior que da el espacio de la app
        ), //Es la turbal
        // body: ImageExample(),
        // body: ButtonExample(),
        // body: TextExample(),
        // body: RowExample(),
        // body: ColumnExample(),
      ),
    );
  }
}