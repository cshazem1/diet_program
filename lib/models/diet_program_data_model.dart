import 'diet_program_model.dart';

class DietProgramData {
  final int currentPageModel;
  final List<DietProgram> data;

  DietProgramData({
    required this.currentPageModel,
    required this.data,
  });

  factory DietProgramData.fromJson(Map<String, dynamic> json) {
    return DietProgramData(
      currentPageModel: json['current_page'],
      data: (json['data'] as List<dynamic>? ?? [])
          .map((program) => DietProgram.fromJson(program))
          .toList(),
    );
  }
}
