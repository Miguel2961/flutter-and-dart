import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        ElevatedButton(
          onPressed: () { // dejar pulsado una vez
            print('pulsado');
          },
          child: Text('soy un botton'),
          onLongPress: () {  //dejar pulsado
            print('pulsadoooo');
          },
          style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.redAccent)),
        ),
        OutlinedButton(onPressed: null, child: Text('Outlined')),
        TextButton(onPressed: null, child: Text('Text button')),
        FloatingActionButton(onPressed: null, child: Icon(Icons.add)),
        IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
        Spacer(),
      ],
    );
  }
}
