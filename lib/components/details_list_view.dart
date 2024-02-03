import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_text.dart';
import 'food_element_widget.dart';
import 'total_elements_table.dart';
import '../cuibt/total_protein_carb_calories_cuibt.dart';
import '../cuibt/total_protein_carb_calories_states.dart';
import '../models/diet_program_model.dart';
import '../models/total_protein_carb_calories_model.dart';

// ignore: must_be_immutable
class DetailsListView extends StatelessWidget {
  List<DietProgram> dietProgramList;
  DetailsListView({super.key, required this.dietProgramList});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: dietProgramList.length,
      itemBuilder: (context, index) {
        final meal = dietProgramList[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: meal.programName.toString(),
                  fontSize: 23,
                  color: Colors.orange,
                ),
              ],
            ),
            const Divider(
                height: 5, color: Colors.black, indent: 150, endIndent: 150),
            CustomText(text: "متوسط نسب الوجبات في اليوم", fontSize: 20),
            const Divider(
                height: 7, color: Colors.black, indent: 150, endIndent: 0),
            BlocBuilder<TotalProteinCarbCaloriesCuibt,
                TotalProteinCarbCaloriesStates>(
              builder: (context, state) {
                if (state is GetTotalStates) {
                  TotalProteinCarbCalories? total =
                      BlocProvider.of<TotalProteinCarbCaloriesCuibt>(context)
                          .total;

                  return Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(20.0),
                    child: TotalElementsTable(total: total),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            for (var element in meal.dietProgramMeals)
              FoodElementWidget(dietProgramMeal: element),
          ],
        );
      },
    );
  }
}
