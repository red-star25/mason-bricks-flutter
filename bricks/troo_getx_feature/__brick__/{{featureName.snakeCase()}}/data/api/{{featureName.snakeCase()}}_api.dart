import 'package:dio/dio.dart';

class {{featureName.pascalCase()}}Api {
  // dio instance
  final DioClient _dioClient;

  // injecting dio instance
  {{featureName.pascalCase()}}Api(this._dioClient);
}
