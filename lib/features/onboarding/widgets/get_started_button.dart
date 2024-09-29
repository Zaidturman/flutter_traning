import 'package:flutter/material.dart';
import 'package:traning_project/core/theming/colors.dart';
import 'package:traning_project/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          width: double.infinity, // يجعل عرض الزر كامل عرض الشاشة

      child: TextButton(onPressed: (){
      
      }, 
      style:  TextButton.styleFrom(
      backgroundColor: ColorsManager.mainblue// تغيير لون الخلفية
      
        ),
      child: 
      Text('Get Started',
      style: CustomTextStyle.font16WhiteSimiBold,
      
      )
      
      ),
    );
  }
}