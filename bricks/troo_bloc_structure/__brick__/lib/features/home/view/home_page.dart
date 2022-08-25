import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../widgets/home_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'hello'.tr(),
        ),
      ),
      body: const HomeText(),
    );
  }
}
