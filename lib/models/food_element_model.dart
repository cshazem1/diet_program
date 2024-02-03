class FoodElement {
  final int id;
  final String foodCategoryId;
  final String name;
  final String description;
  final String calories;
  final String protein;
  final String carbohydrates;
  final String fat;
  final String sugar;
  final String fiber;

  FoodElement({
    required this.id,
    required this.foodCategoryId,
    required this.name,
    required this.description,
    required this.calories,
    required this.protein,
    required this.carbohydrates,
    required this.fat,
    required this.sugar,
    required this.fiber,
  });

  factory FoodElement.fromJson(Map<String, dynamic> json) {
    return FoodElement(
      id: json['id'],
      foodCategoryId: json['food_category_id'],
      name: json['name'],
      description: json['description'],
      calories: json['calories'],
      protein: json['protein'],
      carbohydrates: json['carbohydrates'],
      fat: json['fat'],
      sugar: json['sugar'],
      fiber: json['fiber'],
    );
  }
}
