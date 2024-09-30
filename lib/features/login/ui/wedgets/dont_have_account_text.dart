import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


import '../../../../core/theming/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: CustomTextStyle.font14DarlBlueMedium,
          ),
          TextSpan(
            text: ' Sign Up',
            style: CustomTextStyle.font14DarlBlueMedium,
            recognizer: TapGestureRecognizer()
              ..onTap = () {},
          ),
        ],
      ),
    );
  }
}
