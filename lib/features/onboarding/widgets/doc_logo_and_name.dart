import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/theming/styles.dart';
class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 40, // عرض الصورة
          height: 40, // ارتفاع الصورة
          child: Image.asset('assets/images/docdoc_logo.png'),
        ),
        SizedBox(width: 10.w),
        Text(
          'DocCore',
          style: CustomTextStyle.font28Black700Weight,
        ),
      ],
    );
 }
}