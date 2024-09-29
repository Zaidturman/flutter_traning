import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traning_project/core/theming/colors.dart';

class CustomTextStyle {
  static TextStyle font28Black700Weight = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.mainblue,
  );
}
