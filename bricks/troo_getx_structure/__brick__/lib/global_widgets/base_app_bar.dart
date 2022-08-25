import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../core/constants/colors.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = Colors.transparent;
  final Text? title;
  final List<Widget>? actions;
  final Widget? leading;
  final VoidCallback? onLeadingTap;
  final bool? centerTitle;

  const BaseAppBar(
      {Key? key,
      this.title,
      this.actions,
      this.leading,
      this.onLeadingTap,
      this.centerTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: InkWell(
        onTap: onLeadingTap ??
            () {
              Get.back();
            },
        child: leading ??
            Icon(
              Icons.arrow_back_ios_new_rounded,
              color: AppColors.white,
              size: 24.w,
            ),
      ),
      title: title ?? const Text(''),
      backgroundColor: backgroundColor,
      actions: actions,
      centerTitle: centerTitle,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
