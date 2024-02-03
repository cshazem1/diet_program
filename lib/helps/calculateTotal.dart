import 'package:diet_program/models/diet_program_meal_element_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cuibt/total_protein_carb_calories_cuibt.dart';
import '../models/total_protein_carb_calories_model.dart';

void calculateTotal(
    context, DietProgramMealElementModel dietProgramMealElements) {
  var total = BlocProvider.of<TotalProteinCarbCaloriesCuibt>(context).total;

  if (total == null) {
    double quantity = double.parse(dietProgramMealElements.quantity);

    double totalProtein =
        quantity * (double.parse(dietProgramMealElements.foodElement.protein));

    double totalCarb = quantity *
        (double.parse(dietProgramMealElements.foodElement.carbohydrates));
    double totalCalories =
        quantity * (double.parse(dietProgramMealElements.foodElement.calories));
    TotalProteinCarbCalories total_ = TotalProteinCarbCalories(
        totalCalories: totalCalories.toString(),
        totalCarb: totalCarb.toString(),
        totalProtein: totalProtein.toString());
    BlocProvider.of<TotalProteinCarbCaloriesCuibt>(context).getTotal(total_);
  } else {
    double quantity = double.parse(dietProgramMealElements.quantity);
    double totalCarb = double.parse(total.totalCarb) +
        quantity *
            (double.parse(dietProgramMealElements.foodElement.carbohydrates));
    double totalCalories = double.parse(total.totalCalories) +
        quantity * (double.parse(dietProgramMealElements.foodElement.calories));
    double totalProtein = double.parse(total.totalProtein) +
        quantity * (double.parse(dietProgramMealElements.foodElement.protein));
    TotalProteinCarbCalories total_ = TotalProteinCarbCalories(
        totalCalories: totalCalories.toString(),
        totalCarb: totalCarb.toString(),
        totalProtein: totalProtein.toString());
    BlocProvider.of<TotalProteinCarbCaloriesCuibt>(context).getTotal(total_);
  }
}
