import 'package:flutter/material.dart';

class LoginMenu extends StatelessWidget {
  const LoginMenu ({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    
    return Center(
      child: Container( // TODO: move to widgets
        margin: EdgeInsets.only(left: 30, right: 30),
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
              "tralala", 
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                color: colorScheme.onPrimary,
              ),
            )
          ],
        ),
      ),
    );
  }
}