import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traning_project/core/helpers/spacing.dart';
import 'package:traning_project/core/theming/styles.dart';
import 'package:traning_project/core/widgets/app_text_button.dart';
import 'package:traning_project/core/widgets/app_text_form_field.dart';
import 'package:traning_project/features/login/ui/wedgets/dont_have_account_text.dart';
import 'package:traning_project/features/login/ui/wedgets/terms_and_contitions_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Padding(padding: EdgeInsets.symmetric(horizontal: 30.w , vertical: 30.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome Back",
            style: CustomTextStyle.font24BlueBold,),
              verticalSpace(8),
             Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: CustomTextStyle.font14GrayRegular,
              ),
        
              verticalSpace(36),
              Form(child: 
              Column(
                children: [
                  AppTextFormField(hintText: "Email"),
                  verticalSpace(18),
                  AppTextFormField(hintText: "Password",
                  isObscureText: isObscureText,
                  suffixIcon: GestureDetector(
                    onTap: (){
                      setState(() {
                        isObscureText = !isObscureText;
                      });
                    },
                    child: Icon(isObscureText ? Icons.visibility_off:Icons.visibility)
                    ),
                  ),
                  verticalSpace(24),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text("Forget Password?",
                    style:CustomTextStyle.font13BlueRegular,)),
                    verticalSpace(40),
                    AppTextButton(buttonText: "Login", textStyle: CustomTextStyle.font16WhiteSimiBold, onPressed: (){}),
                     verticalSpace(16),
                      const TermsAndConditionsText(),
                      verticalSpace(60),
                     const DontHaveAccountText(),
        
        
        
                ],
              )
              )
            
          ],
        ),
      ),
      
      )
      ),
    );
  }
}