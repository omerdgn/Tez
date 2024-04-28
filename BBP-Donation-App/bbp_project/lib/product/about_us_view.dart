///Bu class home_page_view.dart ekranındaki Biz Kimiz isimli butona tıklandığında
///Biz Kimiz sayfasını ekrana çizdirmek
///ve projemiz hakkımızda bilgi vermek için oluşturuldu.

import 'package:bbp_project/product/custom_app_bar.dart';
import 'package:bbp_project/product/language/languages.dart';
import 'package:flutter/material.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LanguageItems().aboutUsViewWhoWeAreTitle,
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              LanguageItems().aboutUsViewWhoWeAreText,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
