import 'package:flutter/material.dart';
import 'package:imc_calculate/Core/app_colors.dart';
import 'package:imc_calculate/Screens/imc_home_sreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          title: Text('IMC CALULATOR', style:TextStyle(color: Colors.white) ),

          ),
        
        backgroundColor: AppColors.background,
        body: Center(
          child: ImcHomeScreen(),
        ),
      ),
    );
  }
}
