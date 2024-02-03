import 'package:diet_program/screens/diet_program_details_screen.dart';
import 'package:diet_program/service/diet_program_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cuibt/total_protein_carb_calories_cuibt.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final DietProgramService dietProgramService = DietProgramService();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TotalProteinCarbCaloriesCuibt(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DietProgramDetailsScreen(dietProgramService: dietProgramService),
      ),
    );
  }
}
