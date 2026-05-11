import 'package:flutter/material.dart';
import 'package:imc_calculate/Componets/gender_selector.dart';
import 'package:imc_calculate/Componets/height_selector.dart';
import 'package:imc_calculate/Componets/number_selector.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

//La barra baja dice que es un fichero privado
class _ImcHomeScreenState extends State<ImcHomeScreen> {
  int selectedAge = 20;
  int selectedWeight = 80;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(),
        HeightSelector(),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: NumberSelector(
                  title: "Peso",
                  value: selectedWeight,
                  onIncrement: () => setState(() {
                    selectedWeight++;
                  }),
                  onDecrement: () => setState(() {
                    selectedWeight--;
                  }),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: NumberSelector(
                  title: "Edad",
                  value: selectedAge,
                  onIncrement: () => setState(() {
                    selectedAge++;
                  }),
                  onDecrement: () => setState(() {
                    selectedAge--;
                  }),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
