/*
  Лого помощи
*/

import 'package:flutter/material.dart';

// import 'package:sirius/features/presentation/pages/support_page.dart'; NotImplemented
import 'package:sirius/features/presentation/constructor/images_constructor.dart';


class SupportLogo extends StatelessWidget {
  const SupportLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultImage(
      imagePath: 'assets/images/support_button.png',
      width: 100,
      height: 100,
      // page: SupportPage(), NotImplemented
      onPressed: () {},
    );
  }
}