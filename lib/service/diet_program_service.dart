import 'package:dio/dio.dart';
import '../models/diet_program_data_model.dart';

class DietProgramService {
  String baseUrl = 'https://app.dafitzone.com/api/v1';
  String id="78";
  final dio = Dio();
  Future<DietProgramData> getDietProgram() async {
    try {
      final response = await dio
          .get('$baseUrl/trainne/diet-programs?id=$id');
      Map<String, dynamic> map = response.data;
      return DietProgramData.fromJson(map["data"]);
    } catch (error) {
      throw Exception('Error: $error');
      // TODO
    }
  }
}
