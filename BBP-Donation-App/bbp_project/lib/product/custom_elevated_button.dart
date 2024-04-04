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
          shape: const StadiumBorder(
              side: BorderSide(
                  color: ColorUtility.textWhiteColorOfProject, width: 2.0)),
          backgroundColor: ColorUtility.buttonColorOfProject,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: ColorUtility.textWhiteColorOfProject,
            fontSize: 11,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
