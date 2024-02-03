import 'package:diet_program/models/diet_program_meal_element_model.dart';
import 'package:flutter/material.dart';
import '../components/custom_text.dart';
import '../components/element _details.dart';
import '../components/total_elements_table.dart';
import '../constants.dart';

// ignore: must_be_immutable
class FoodElementDetailsScreen extends StatelessWidget {
  static String id = "FoodElementDetailsScreen";
  String? calories;
  String? fiber;
    String? sugar;
    String? fat;
   String? carbohydrates;
   String? protein;
   // ignore: prefer_typing_uninitialized_variables
   var total;
  FoodElementDetailsScreen(this.dietProgramMealElements, this.total, {super.key});
  DietProgramMealElementModel dietProgramMealElements;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
          centerTitle: true,
          title: CustomText(
            text: " details ${dietProgramMealElements.foodElement.name}",
            fontSize: 20,
          )),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TotalElementsTable(total: total),
            ElementDetails(
                element: "fiber",
                grams: dietProgramMealElements.foodElement.fiber),
            ElementDetails(
                element: "carbohydrates",
                grams: dietProgramMealElements.foodElement.carbohydrates),
            ElementDetails(
                element: "protein",
                grams: dietProgramMealElements.foodElement.protein),
            ElementDetails(
                element: "fat", grams: dietProgramMealElements.foodElement.fat),
            ElementDetails(
                element: "sugar",
                grams: dietProgramMealElements.foodElement.sugar),
            ElementDetails(
                element: "calories",
                grams: dietProgramMealElements.foodElement.calories),
            const Divider(
              height: 5,
              color: Colors.black,
              endIndent: 20,
              indent: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),

                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                    BoxShadow(
                      color: kBackgroundColor.withOpacity(1),

                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: " piece *${dietProgramMealElements.quantity}",
                        fontSize: 23,
                        color: Colors.grey),
                    CustomText(
                        text:
                            " ${dietProgramMealElements.foodElement.description}",
                        fontSize: 23,
                        color: Colors.grey),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
