import 'package:flutter/material.dart';
import 'package:imc_calculate/Componets/gender_selector.dart';
import 'package:imc_calculate/Componets/height_selector.dart';
import 'package:imc_calculate/Componets/number_selector.dart';
import 'package:imc_calculate/Core/app_colors.dart';
import 'package:imc_calculate/Core/text_styles.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

//La barra baja dice que es un fichero privado
class _ImcHomeScreenState extends State<ImcHomeScreen> {
  int selectedAge = 20;
  int selectedWeight = 80;
  double selectedHeight = 220;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(),
        HeightSelector(
          height: selectedHeight,
          onHeightChange: (newHeight) {
            setState(() {
              selectedHeight = newHeight;
            });
          },
        ),
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
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                ))
              },
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                backgroundColor: WidgetStateProperty.all(AppColors.primary),
              ),
              child: Text('Calcular', style: TextStyles.bodyText),
            ),
          ),
        ),
      ],
    );
  }
}
