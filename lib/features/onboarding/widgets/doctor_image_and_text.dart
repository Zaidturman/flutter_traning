import 'package:flutter/material.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Colors.white,
                Colors.white.withOpacity(0.0)
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.02,0.4],
            )
          ),
          child: Image.asset('assets/images/onboarding_doctor.png')
        ),
      ],
    );
  }
}