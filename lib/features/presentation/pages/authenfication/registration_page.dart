import 'package:flutter/material.dart';
import 'package:sirius/utils/colors.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPage();
}

class _RegistrationPage extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Номер телефона',
              ),
            ),
          ],
        ),
      ),
      backgroundColor: BackgroundColor,
    );
  }
}