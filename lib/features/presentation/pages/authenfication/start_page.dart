import 'package:flutter/material.dart';
import 'package:sirius/features/presentation/constructor/background_constructor.dart';

import 'package:sirius/features/presentation/widgets/authenfication/auth_widget.dart';
import 'package:sirius/features/presentation/widgets/support/support_widget.dart';


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

          Positioned.fill(
            child: BackgroundContainer(),
          ),

          Positioned.fill(
            child: MainButtons(),
          ),
          
          SupportWidget(),
        ],
      ),
    );
  }
}