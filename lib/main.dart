import 'package:flutter/material.dart';
import 'package:sirius/features/presentation/pages/authenfication/start_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  // инитт  хайв
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Атом',
      home: StartPage(), 
    );
  }
}