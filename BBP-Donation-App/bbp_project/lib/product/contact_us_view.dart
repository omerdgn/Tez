/// Bu class home_page_view.dart ekranındaki İletişim isimli butona tıklandığında
/// İletişim sayfasını ekrana çizdirmek
/// ve iletişim bilgilerimizi kullancıya sunmak için oluşturuldu.

import 'package:bbp_project/product/custom_app_bar.dart';
import 'package:bbp_project/product/language/languages.dart';
import 'package:flutter/material.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: SizedBox(
                child: Text(
                  LanguageItems().contactUsviewMainText,
                  style: const TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.email),
            title: Text(LanguageItems().contactUsViewMailListTileTitle),
            subtitle: Text(LanguageItems().contactUsViewMailListTileSubtitle),
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: Text(LanguageItems().contactUsViewPhoneNumberListTileTitle),
            subtitle:
                Text(LanguageItems().contactUsViewPhoneNumberListTileSubtitle),
          ),
        ],
      ),
    );
  }
}
