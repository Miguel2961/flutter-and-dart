import 'package:flutter/material.dart';
import 'package:imc_calculate/Core/app_colors.dart';
import 'package:imc_calculate/Core/text_styles.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Man
        Expanded(
          child: GestureDetector(
            // Esto sirve para escuchar los tap todos los tipos de clicleos
            onTap: () {
              setState(() {
                // metodo para modificar
                selectedGender = 'man';
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 16,
                bottom: 16,
                right: 8,
              ),
              child: Container(
                decoration: BoxDecoration(
                  // decorador de interatividad
                  color: selectedGender == 'man'
                      ? AppColors.backgroundComponentSelected
                      : AppColors.backgroundComponet,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/male-gender (1).png',
                        height: 100,
                      ),
                      SizedBox(height: 8),
                      Text('Man', style: TextStyles.bodyText),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        //Woman
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                // metodo para modificar
                selectedGender = 'woman';
              });
            },
            child: Padding(
              //Un child sirve pra llamar un padre que maneja un solo hijo
              padding: const EdgeInsets.only(
                left: 16,
                top: 16,
                bottom: 16,
                right: 8,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedGender == 'woman'
                      ? AppColors.backgroundComponentSelected
                      : AppColors.backgroundComponet,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      //El children maneja un padre con varios hijos
                      Image.asset('assets/images/female.png', height: 100),
                      SizedBox(height: 8),
                      Text('Woman', style: TextStyles.bodyText),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
