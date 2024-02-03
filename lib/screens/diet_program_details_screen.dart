import 'package:diet_program/components/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../components/details_list_view.dart';
import '../constants.dart';
import '../cuibt/total_protein_carb_calories_cuibt.dart';
import '../models/diet_program_data_model.dart';
import '../service/diet_program_service.dart';

class DietProgramDetailsScreen extends StatelessWidget {
  static String id = "DietProgramDetailsScreen";
  const DietProgramDetailsScreen({
    super.key,
    required this.dietProgramService,
  });

  final DietProgramService dietProgramService;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(.5),
        centerTitle: true,
        title:
            CustomText(fontSize: 23, text: "Diet Program", color: Colors.black),
      ),
      body: FutureBuilder<DietProgramData>(
        future: dietProgramService.getDietProgram(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            BlocProvider.of<TotalProteinCarbCaloriesCuibt>(context).total =
                null;
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData) {
            return const Center(
              child: Text('No data available'),
            );
          } else {
            final dietProgram = snapshot.data!;
            return DetailsListView(dietProgramList: dietProgram.data);
          }
        },
      ),
    );
  }
}
