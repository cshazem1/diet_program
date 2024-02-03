import 'food_element_model.dart';

class DietProgramMealElementModel {
  final int id;
  final String quantity;
  final FoodElement foodElement;

  DietProgramMealElementModel({
    required this.id,
    required this.quantity,
    required this.foodElement,
  });

  factory DietProgramMealElementModel.fromJson(Map<String, dynamic> json) {
    return DietProgramMealElementModel(
      id: json['id'],
      quantity: json['quantity'],
      foodElement: FoodElement.fromJson(json['food_element']),
    );
  }
}
