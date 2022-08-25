import 'package:dio/dio.dart';

class HomeApi {
  // dio instance
  final DioClient _dioClient;

  // injecting dio instance
  HomeApi(this._dioClient);

  Future<Map<String, dynamic>> getUserApi() async {
    try {
      final Response response = await _dioClient.get('');
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
