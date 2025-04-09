import 'package:flutter/material.dart';

import 'package:sirius/features/presentation/constructor/buttons_constructor.dart';

class LogRegMenu extends StatelessWidget {
  const LogRegMenu ({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 23, 23, 23),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withAlpha(128),
              blurRadius: 10,
              spreadRadius: 2,
            )
          ]
        ),
        child: Wrap(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultButton(
                  text: "Регистрация",
                  fontSize: 30,
                  height: double.infinity,
                  borderRadius: 8,
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  onPressed: () {},
                ),
                DefaultButton(
                  text: "Войти",
                  fontSize: 30,
                  height: double.infinity,
                  width: double.infinity,
                  borderRadius: 8,
                  padding: EdgeInsets.all(20),
                  onPressed: () {},
                ),
              ],
            ),
          ]
        ),
      ),
    );
  }
}