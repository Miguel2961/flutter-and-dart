import 'package:flutter/material.dart';
// import 'package:mi_primer_flutter/Components/button.dart';
import 'package:mi_primer_flutter/Components/image.dart';
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
      home: Scaffold(
        body: ImageExample(),
        // body: ButtonExample(),
        // body: TextExample(),
        // body: RowExample(),
        // body: ColumnExample(),
      ),
    );
  }
}