import 'package:flutter/material.dart';
import 'package:sirius/features/presentation/pages/authenfication/login/by_mail.dart';
import 'package:sirius/features/presentation/pages/authenfication/login/login_page.dart';
import 'package:sirius/features/presentation/pages/authenfication/registration/by_mail.dart';
import 'package:sirius/features/presentation/pages/authenfication/registration/registration_page.dart';
import 'package:sirius/features/presentation/widgets/email/email.dart';

import '../../constructor/buttons_constructor.dart';

class AuthOptions extends StatelessWidget {
  final Widget page;

  const AuthOptions({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    Widget nextPage = ByMailPageRegistration();

    if (page is RegistrationPage) {
      nextPage = ByMailPageRegistration();
    } else if (page is LoginPage) {
      nextPage = ByMailPageLogin();
    }

    return Container(
      child: Column(
        children: [
          DefaultButton(
            text: "По почте",
            fontSize: 30,
            height: 84,
            top: 178,
            borderRadius: 25,
            width: 312,
            left: 35,
            page: nextPage,
          ),
          DefaultButton(
            text: "По номеру",
            fontSize: 30,
            height: 84,
            top: 60,
            borderRadius: 25,
            width: 312,
            left: 35,
            page: nextPage,
          ),
        ],
      ),
    );
  }
}