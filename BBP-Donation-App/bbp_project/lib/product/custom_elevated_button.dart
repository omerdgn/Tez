//Bu class projeye özgü bir ElevatedButton tasarımı için oluşturuldu.

import 'package:bbp_project/product/colors_utility.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorUtility.buttonColorOfProject,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: ColorUtility.textColorOfProject,
            fontSize: 11,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
