import 'package:flutter/material.dart';

import 'package:sirius/features/presentation/widgets/authenfication/auth_options.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AuthOptions(
          page: RegistrationPage(),
        )
      ],
    );
  }
} 