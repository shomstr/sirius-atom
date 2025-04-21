import 'package:flutter/material.dart';

import 'package:sirius/features/presentation/widgets/email/email.dart';

class ByMailPageRegistration extends StatelessWidget {
  const ByMailPageRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return const EmailInputPage(
      isRegistration: true, 
    );
  }
}