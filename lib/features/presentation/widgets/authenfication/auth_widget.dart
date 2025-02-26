import 'package:flutter/material.dart';
import 'package:sirius/features/presentation/pages/authenfication/login/login_page.dart';
import 'package:sirius/features/presentation/pages/authenfication/registration/registration_page.dart';

import '../../constructor/buttons_constructor.dart';

class MainButtons extends StatelessWidget {
  const MainButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefaultButton(
            text: "Регистрация",
            fontSize: 30,
            height: 115,
            borderRadius: 25,
            width: 324,
            padding: EdgeInsets.symmetric(horizontal: 34, vertical: 36),
            page: RegistrationPage(),
          ),
          SizedBox(height: 35),
          DefaultButton(
            text: "Войти",
            fontSize: 30,
            height: 115,
            width: 324,
            borderRadius: 25,
            padding: EdgeInsets.symmetric(horizontal: 113, vertical: 36),
            page: LoginPage(),
          ),
        ],
      ),
    );
  }
}