import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/diet_program_meal_model.dart';
import 'custom_text.dart';
import 'diet_program_meal_elements.dart';

class FoodElementWidget extends StatelessWidget {
  final DietProgramMealModel dietProgramMeal;

  const FoodElementWidget({super.key, required this.dietProgramMeal});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomText(text: dietProgramMeal.mealName, fontSize: 23),
            ],
          ),
        ),
        for (var dietProgramMealElements
            in dietProgramMeal.dietProgramMealElements)
          DietProgramMealElements(
              dietProgramMealElements: dietProgramMealElements)
      ],
    );
  }
}
