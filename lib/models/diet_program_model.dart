import 'diet_program_meal_model.dart';
class DietProgram {
  final int id;
  final String programName;
  final List<DietProgramMealModel> dietProgramMeals;

  DietProgram({
    required this.id,
    required this.programName,
    required this.dietProgramMeals,
  });

  factory DietProgram.fromJson(Map<String, dynamic> json) {
    return DietProgram(
      id: json['id'],
      programName: json['program_name'],
      dietProgramMeals: (json['diet_program_meal'] as List<dynamic>? ?? [])
          .map((meal) => DietProgramMealModel.fromJson(meal))
          .toList(),
    );
  }
}
