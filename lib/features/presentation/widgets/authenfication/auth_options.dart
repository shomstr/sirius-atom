/*
  Создание кнопок с опциями входа
  
  Аргументы конструктора:
    №  | Имя          | Тип аргумента      | Описание
    1  | onSelect     | VoidCallback       | Коллбэк при селекте опции

*/

import 'package:flutter/material.dart';

import 'package:sirius/features/presentation/constructor/underlined_buttons_constructor.dart';

class AuthOptions extends StatefulWidget {
  final Function(int) Function()? onSelect;

  const AuthOptions({
    super.key,
    this.onSelect,
  });

  @override
  AuthOptionsState createState() => AuthOptionsState();
}

class AuthOptionsState extends State<AuthOptions> {
  late int selected;
  late Function(int) Function()? onSelect;
  final List<GlobalKey<DefaultUnderlinedButtonState>> optionsKeys = List<GlobalKey<DefaultUnderlinedButtonState>>.generate(3, (_) => GlobalKey<DefaultUnderlinedButtonState>());

  @override
  void initState() {
    super.initState();

    selected = 0;
    onSelect = widget.onSelect;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DefaultUnderlinedButton(
          key: optionsKeys[0],
          text: "По Email",
          toggled: true,
          margin: EdgeInsets.only(
            right: 10,
            left: 10,
          ),
          onPressed: () => select(0),
        ),
        DefaultUnderlinedButton(
          key: optionsKeys[1],
          text: "По Телефону",
          toggled: false,
          margin: EdgeInsets.only(
            right: 10,
            left: 10,
          ),
          onPressed: () => select(1),
        ),
        DefaultUnderlinedButton(
          key: optionsKeys[2],
          text: "По ФИО",
          toggled: false,
          margin: EdgeInsets.only(
            right: 10,
            left: 10,
          ),
          onPressed: () => select(2),
        ),
      ],
    );
  }

  void select(int i) {
    (onSelect ?? () => (_) {}) ()(i); // Если есть функция - вызываем, иначе возвращаем пустышку
    optionsKeys[selected].currentState!.toggle();
    selected = i;
    optionsKeys[selected].currentState!.toggle();
  }
}