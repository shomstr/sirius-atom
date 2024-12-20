import 'package:flutter/material.dart';
import 'package:sirius/features/presentation/pages/authenfication/registration_page.dart';
import 'package:sirius/features/presentation/widgets/default_button.dart';
import 'package:sirius/utils/colors.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
              },
              child: Text('Регистрация'),
            ),
            SizedBox(height: 20),
            DefaultButton(text: "Войти")
          ],
        ),
      ),
      backgroundColor: BackgroundColor,
    );
  }
}