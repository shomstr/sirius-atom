import 'package:flutter/material.dart';
import 'package:sirius/features/presentation/constructor/background_constructor.dart';

import 'package:sirius/features/presentation/widgets/authenfication/auth_options.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: BackgroundContainer(),
          ),

        AuthOptions(
          page: LoginPage(),
        )
      ],
    );
  }
} 