import 'package:diet_program/components/custom_text.dart';
import 'package:diet_program/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cuibt/total_protein_carb_calories_cuibt.dart';
import '../helps/calculateTotal.dart';
import '../helps/images.dart';
import '../models/diet_program_meal_element_model.dart';
import '../screens/food_element_details_screen.dart';

class DietProgramMealElements extends StatelessWidget {
  const DietProgramMealElements({
    super.key,
    required this.dietProgramMealElements,
  });

  final DietProgramMealElementModel dietProgramMealElements;
  @override
  Widget build(BuildContext context) {
    calculateTotal(context, dietProgramMealElements);
    return GestureDetector(
      onTap: () {
        var total =
            BlocProvider.of<TotalProteinCarbCaloriesCuibt>(context).total;
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return FoodElementDetailsScreen(dietProgramMealElements, total);
          },
        ));
      },
      child: Container(
          padding: const EdgeInsets.all(15),
          height: 90,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              border: Border.all(
                color: Colors.orange.withOpacity(.6),
                width: 3,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(Icons.arrow_back),
              const Spacer(
                flex: 5,
              ),
              CustomText(
                text: "piece *${dietProgramMealElements.quantity}  ",
                fontSize: 15,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 15,
              ),
              CustomText(
                  text: dietProgramMealElements.foodElement.name, fontSize: 20),
              SizedBox(
                height: 50,
                width: 50,
                child: Image(
                    image: image(dietProgramMealElements.foodElement.name),
                    fit: BoxFit.fill),
              ),
              const Spacer(
                flex: 1,
              ),
              const Icon(Icons.backspace_outlined)
            ],
          )),
    );
  }
}
