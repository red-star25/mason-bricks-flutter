import 'package:flutter/material.dart';

import '../features/home/view/home_page.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (BuildContext context) => const HomePage(),
  };
}
