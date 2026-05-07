import 'dart:ffi';
import 'dart:io';

import 'package:mi_primer_dart/mi_primer_dart.dart' as mi_primer_dart;

void main(List<String> arguments) {
  // ------------------------------------------------------
  //                VARIABLES Y CONTROL
  // ------------------------------------------------------

  // Ejercicio 1
  String Ayear = '2001';
  int Byear = int.parse(Ayear);
  print('Tienes ${2025 - Byear} años');

  // Ejercicio 2

  double cuenta = 2500000;
  int propina = 5;
  int personas = 3;

  double total = ((cuenta * propina) / 100) + cuenta;
  String valor = (total / personas).toString();

  print(
    'la cuenta es más la propina es $total y la cuenta repartida es ${valor.toString()}',
  );

  // ------------------------------------------------------
  //                Condicionales
  // ------------------------------------------------------

  // Ejercicios 1
  // stdout.write('Ingresar día de la semana: ');
  // int day = int.parse(stdin.readLineSync()!);

  // if (day == 1) {
  //   print('Es el día lunes');
  // } else if (day == 2) {
  //   print('Es el día martes');
  // } else if (day == 3) {
  //   print('Es el día miercoles');
  // } else if (day == 4) {
  //   print('Es el día jueves');
  // } else if (day == 5) {
  //   print('Es el día viernes');
  // } else if (day == 6) {
  //   print('Es el día sabado');
  // } else if (day == 7) {
  //   print('Es el día domingo');
  // } else {
  //   print('Dato ingresado incorecto ');
  // }

  // // Ejercicios 2

  // stdout.write('Escribir número del mes: ');
  // int mes = int.parse(stdin.readLineSync()!);

  // switch (mes) {
  //   case 1:
  //     print("mes 1");
  //     break;
  //   case 2:
  //     print("mes 2");
  //     break;
  //   case 3:
  //     print("mes 3");
  //     break;
  //   case 4:
  //     print("mes 4");
  //     break;
  //   case 5:
  //     print("mes 5");
  //     break;
  //   case 6:
  //     print("mes 6");
  //     break;
  //   case 7:
  //     print("mes 7");
  //     break;
  //   case 8:
  //     print("mes 8");
  //     break;
  //   case 9:
  //     print("mes 9");
  //     break;
  //   case 10:
  //     print("mes 10");
  //     break;
  //   case 11:
  //     print("mes 11");
  //     break;
  //   case 12:
  //     print("mes 12");
  //     break;
  //   default:
  //     print('no coincide con ningun mes');
  // }

  // ------------------------------------------------------
  //                Estructura
  // ------------------------------------------------------
  print(sumadenumerospares());

  lista();
}

String sumadenumerospares() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int i = 0;
  for (var e in numeros) {
    if (e % 2 == 0) {
      i += e;
    }
  }

  return 'los numero enteros ${i.toString()}';
}

void lista() {
  List<String> palabras1 = [
    "dart",
    "flutter",
    "dart",
    "codigo",
    "flutter",
    "movil",
  ];
  Set<String> palabras2 = Set.from(palabras1);
  print(palabras2);
}

void repetidos() {
  List<String> palabras1 = [
    "dart",
    "flutter",
    "dart",
    "codigo",
    "flutter",
    "movil",
  ];
  Map<String, int> palabras2 = {};
  for (var element in palabras1) {
    if (palabras2.containsKey(element)) {
      palabras2[element] = palabras2[element]! + 1;
    } else {
      palabras2[element] = 1;
    }
  }
}
