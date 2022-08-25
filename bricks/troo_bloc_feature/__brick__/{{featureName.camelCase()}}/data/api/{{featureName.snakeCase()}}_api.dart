import 'package:dio/dio.dart';

import '../../../../core/network/client/dio_client.dart';

class {{featureName.pascalCase()}}Api {
  // dio instance
  final DioClient _dioClient;

  // injecting dio instance
  {{featureName.pascalCase()}}Api(this._dioClient);

}
