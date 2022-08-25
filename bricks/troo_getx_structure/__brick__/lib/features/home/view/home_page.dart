import 'package:flutter/material.dart';

import '../../../global_widgets/base_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: Text(
          'Home',
        ),
      ),
    );
  }
}
