import 'package:flutter/material.dart';
import 'package:sirius/utils/colors.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
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