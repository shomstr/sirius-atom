import 'package:flutter/material.dart';

import 'package:sirius/features/presentation/widgets/email/email.dart';

class ByMailPageLogin extends StatelessWidget {
  const ByMailPageLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const EmailInputPage(
      isRegistration: false,
    );
  }
}