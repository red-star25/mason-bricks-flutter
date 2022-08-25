import 'package:get/get.dart';

import '../features/home/bindings.dart';
import '../features/home/view/home_page.dart';
import 'routes.dart';

class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: Routes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
