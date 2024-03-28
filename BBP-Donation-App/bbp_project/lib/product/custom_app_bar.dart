//Bu class projeye özgü bir AppBar oluşturmak amacıyla kuruldu.

import 'package:bbp_project/product/image_items.dart';
import 'package:bbp_project/product/language/languages.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget appBarOutlinedcon;

  const CustomAppBar({
    Key? key,
    this.appBarOutlinedcon = const Icon(Icons.account_circle_outlined),
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: SizedBox(
            width: kToolbarHeight,
            height: kToolbarHeight,
            child: appBarOutlinedcon,
          ),
        ),
      ],
      automaticallyImplyLeading: false,
      title: Align(
        alignment: Alignment.center,
        child: Row(
          children: [
            SizedBox(
              height: kToolbarHeight,
              child: Image.asset(
                "assets/png/${ImageItems().universityLogo}.png",
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 35),
            const Text(LanguageItems.homePageViewAppBarTitle),
          ],
        ),
      ),
    );
  }
}
