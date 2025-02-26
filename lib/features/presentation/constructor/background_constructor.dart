import 'package:flutter/material.dart';
import 'package:sirius/utils/colors.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: BackgroundColor,
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      width: double.infinity,
      height: double.infinity,
    );
  }
}