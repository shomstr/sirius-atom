import 'package:flutter/material.dart';
import 'package:sirius/features/presentation/constructor/buttons_constructor.dart';
import 'package:sirius/features/presentation/widgets/authenfication/auth_inputs.dart';

import 'package:sirius/features/presentation/widgets/authenfication/auth_options.dart';

class LoginPage extends StatelessWidget {
  final GlobalKey<AuthInputsState> inputsKey = GlobalKey<AuthInputsState>();
  final GlobalKey<AuthOptionsState> optionsKey = GlobalKey<AuthOptionsState>();

  LoginPage ({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Center(
      child: Container( // TODO: move to widgets / constructor
        margin: EdgeInsets.only(left: 30, right: 30),
        padding: EdgeInsets.all(10),
        width: 400,
        decoration: BoxDecoration(
          color: colorScheme.primary,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: colorScheme.outlineVariant,
            width: 1,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Добро пожаловать", 
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                color: colorScheme.onPrimary,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Войдите в свою галактику",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: colorScheme.secondary,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            AuthOptions(
              key: optionsKey,
              onSelect: () => inputsKey.currentState!.select,
            ),
            SizedBox(
              height: 40,
            ),
            AuthInputs(
              key: inputsKey,
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: DefaultButton(
                    text: "Войти",
                    onPressed: () {}, // TODO: navigation to page
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}