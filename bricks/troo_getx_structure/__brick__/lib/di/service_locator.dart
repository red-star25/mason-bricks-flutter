import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../core/local/shared_pref/helper.dart';
import '../core/local/shared_pref/preference.dart';
import '../core/network/client/dio_client.dart';

Future<void> setupLocator() async {
  // singletons:----------------------------------------------------------------
  Get.put(Preference());
  await Preference.load();
  Get.put(SharedPreferenceHelper());
  Get.put(DioClient(Dio()));

  // api's:---------------------------------------------------------------------

  // repository:----------------------------------------------------------------
}
