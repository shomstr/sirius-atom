import 'package:flutter/material.dart';

class GetCodePageLogin extends StatelessWidget {
  const GetCodePageLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Код для входа'),
      ),
      body: const Center(
        child: Text('Введите код, отправленный на вашу почту'),
      ),
    );
  }
}