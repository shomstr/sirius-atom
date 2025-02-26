import 'package:flutter/material.dart';

import 'package:sirius/features/presentation/pages/support_page.dart';
import 'package:sirius/features/presentation/constructor/images_pressed.dart';


class SupportWidget extends StatelessWidget {
  const SupportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 640, 
      left: 255,
      child: LogoWidget(
        imagePath: 'assets/images/support_button.png',
        width: 103,
        height: 103,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SupportPage()),
          );
        },
      ),
    );
  }
}