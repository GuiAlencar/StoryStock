import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  void Function()? onTapButton;
  MyButton({
    super.key,
    required this.buttonText,
    required this.onTapButton,
  });
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapButton,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
  }