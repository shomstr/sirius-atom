import 'package:flutter/material.dart';

import 'package:sirius/features/presentation/constructor/outlined_input_constructor.dart';

class AuthInputs extends StatefulWidget {
  const AuthInputs({super.key});

  @override
  AuthInputsState createState() => AuthInputsState();
}

class AuthInputsState extends State<AuthInputs> {
  final List<GlobalKey<DefaultOutlinedInputState>> keys = List<GlobalKey<DefaultOutlinedInputState>>.generate(2, (_) => GlobalKey<DefaultOutlinedInputState>());
  final List<String> hints = List<String>.filled(3, '');
  late int selected;

  @override
  void initState() {
    super.initState();

    hints.setAll(0, ["Email", "Телефон", "ФИО"]);
    selected = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultOutlinedInput(
          key: keys[0],
          hint: hints[selected],
        ),
        SizedBox(
          height: 10,
        ),
        DefaultOutlinedInput(
          key: keys[1],
          hint: "Пароль",
        ),
      ]
    );
  }

  void select(int i) {
    setState(() {
      selected = i;
      keys.forEach(
        (key) {
          key.currentState!.clear();
        }
      );
      keys[0].currentState!.setHint(hints[selected]);
    });
  }
}