import 'package:flutter/material.dart';
import 'package:sirius/utils/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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