/*
  Стартовая страница
*/

import 'package:flutter/material.dart';

import 'package:sirius/features/presentation/pages/authenfication/login_page.dart';
import 'package:sirius/features/presentation/widgets/support/support_logo.dart';
import 'package:sirius/features/presentation/constructor/background_constructor.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Positioned.fill(
            child: BackgroundContainer(),
          ),

          Positioned.fill(
            child: LoginPage(),
          ),
          
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomRight,
              child: SupportLogo(),
            )
          ),
        ],
      ),
    );
  }
}