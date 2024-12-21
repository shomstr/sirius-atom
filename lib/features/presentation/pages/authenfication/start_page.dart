import 'package:flutter/material.dart';
import 'package:sirius/features/presentation/pages/authenfication/registration_page.dart';
import 'package:sirius/features/presentation/pages/authenfication/login_page.dart'; 
import 'package:sirius/features/presentation/widgets/buttons_widget.dart';
import 'package:sirius/utils/colors.dart';
import 'package:sirius/features/presentation/widgets/images_widget.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: BackgroundColor, 
          ),
          Positioned(
            top: 750, 
            left: 16,
            child: LogoWidget(
              imagePath: 'assets/images/logo.png', 
              width: 106,
              height: 51,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 70), 
                DefaultButton(
                  text: "Регистрация",
                  fontSize: 30,
                  height: 51,
                  width: 260,
                  page: RegistrationPage(), 
                ),
                SizedBox(height: 20),
                DefaultButton(
                  text: "Войти",
                  fontSize: 30,
                  height: 51,
                  width: 260,
                  page: LoginPage(), 
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}