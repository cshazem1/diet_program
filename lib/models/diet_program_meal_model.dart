import 'diet_program_meal_element_model.dart';

class DietProgramMealModel {
  final int id;
  final String mealName;
  final List<DietProgramMealElementModel> dietProgramMealElements;
  DietProgramMealModel({
    required this.id,
    required this.mealName,
    required this.dietProgramMealElements,
  });

  factory DietProgramMealModel.fromJson(Map<String, dynamic> json) {
    return DietProgramMealModel(
      id: json['id'],
      mealName: json['meal_name'],
      dietProgramMealElements:
          (json['diet_program_meal_element'] as List<dynamic>? ?? [])
              .map((element) => DietProgramMealElementModel.fromJson(element))
              .toList(),
    );
  }
}
