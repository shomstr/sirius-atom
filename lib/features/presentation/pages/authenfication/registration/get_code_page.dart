import 'package:flutter/material.dart';

class GetCodePageRegistration extends StatelessWidget {
  const GetCodePageRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Код для регистрации'),
      ),
      body: const Center(
        child: Text('Введите код, отправленный на вашу почту'),
      ),
    );
  }
}