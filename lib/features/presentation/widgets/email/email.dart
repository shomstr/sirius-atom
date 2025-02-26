import 'package:flutter/material.dart';
import 'package:sirius/features/presentation/constructor/buttons_constructor.dart';
import 'package:sirius/features/presentation/pages/authenfication/login/get_code_page.dart';
import 'package:sirius/features/presentation/pages/authenfication/registration/get_code_page.dart';
import 'package:sirius/features/presentation/widgets/email/email_input.dart';
import 'package:sirius/utils/colors.dart'; // Импортируем цвета

class EmailInputPage extends StatefulWidget {
  final bool isRegistration;

  const EmailInputPage({super.key, required this.isRegistration});

  @override
  _EmailInputPageState createState() => _EmailInputPageState();
}

class _EmailInputPageState extends State<EmailInputPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  String _errorMessage = '';

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  bool _isEmailValid(String email) {
    final regex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return regex.hasMatch(email);
  }

  void _submitEmail() {
    if (_formKey.currentState!.validate()) {
      final email = _emailController.text;
      if (_isEmailValid(email)) {
        setState(() {
          _errorMessage = '';
        });

        if (widget.isRegistration) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GetCodePageRegistration(),
            ),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GetCodePageLogin(),
            ),
          );
        }
      } else {
        setState(() {
          _errorMessage = 'Введите корректный адрес почты';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          Container(
            decoration: BoxDecoration(
              color: BackgroundColor, 
              image: const DecorationImage(
                image: AssetImage('assets/images/background.png'), 
                fit: BoxFit.cover, 
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  EmailInputWithValidation(
                    controller: _emailController,
                    errorMessage: _errorMessage,
                    onSubmitted: (value) {
                      _submitEmail();
                    },
                  ),
                  const SizedBox(height: 20),
                  DefaultButton(
                    text: 'Продолжить',
                    onPressed: _submitEmail,
                    width: double.infinity,
                    height: 50,
                    borderRadius: 12,
                    fontSize: 18,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}