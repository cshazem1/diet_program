import 'package:bloc/bloc.dart';
import 'package:diet_program/cuibt/total_protein_carb_calories_states.dart';

import '../models/total_protein_carb_calories_model.dart';

class TotalProteinCarbCaloriesCuibt
    extends Cubit<TotalProteinCarbCaloriesStates> {
  TotalProteinCarbCalories? total;
  bool finish = false;
  TotalProteinCarbCaloriesCuibt() : super(InitialTotalState());

  getTotal(TotalProteinCarbCalories total_) async {
    try {
      total = total_;
      if (total != null) emit(GetTotalStates());
    } catch (e) {
      emit(FailedStates());
    }
  }
}
