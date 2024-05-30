/// Bu class başarılı bir şekilde hesap oluşturduktan veya giriş yaptıktan sonra ekranındaki Bağışçı Hesabı textli butona tıklandığında
/// Bağışçıyı karşılan ana ekran için oluşturuldu.

import 'package:bbp_project/product/colors_utility.dart';
import 'package:bbp_project/product/custom_app_bar.dart';
import 'package:bbp_project/product/custom_elevated_button.dart';
import 'package:bbp_project/product/donater_info_view.dart';
import 'package:bbp_project/product/donation_page_view.dart';
import 'package:bbp_project/product/image_items.dart';
import 'package:bbp_project/product/language/languages.dart';
import 'package:bbp_project/product/png_images.dart';
import 'package:bbp_project/product/profile_app_bar.dart';
import 'package:flutter/material.dart';

class DonaterMainPageView extends StatefulWidget {
  const DonaterMainPageView({super.key});

  @override
  State<DonaterMainPageView> createState() => _DonaterMainPageState();
}

class _DonaterMainPageState extends State<DonaterMainPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProfileAppBar(),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: SizedBox(
                  child: Text(
                    LanguageItems().donaterMainPageMainText,
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 7.0, right: 7.0, top: 5.0, bottom: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                          child: Card(
                        color: ColorUtility.textWhiteColorOfProject,
                        child: Column(
                          children: [
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(top: 40.0),
                              child: Text(
                                LanguageItems()
                                    .donaterMainPageMakeDonationTtile,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        ColorUtility.textBlackColorOfProject),
                              ),
                            )),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: PngImages(
                                  pngName: ImageItems().donateSticker,
                                  fitType: BoxFit.scaleDown),
                            )),
                            Expanded(
                                child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.00),
                              child: Text(
                                LanguageItems()
                                    .donaterMainPageMakeDonationCaption,
                                style: const TextStyle(
                                    color:
                                        ColorUtility.textBlackColorOfProject),
                              ),
                            )),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 40.00, bottom: 40.0),
                                child: CustomElevatedButton(
                                    text: 'Bağışta Bulun',
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DonationPageView()),
                                      );
                                    }),
                              ),
                            )
                          ],
                        ),
                      )),
                    ),
                    Expanded(
                      child: Center(
                          child: Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(top: 40.0),
                              child: Text(
                                LanguageItems()
                                    .donaterMainPageShowDonaterInfoTitle,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        ColorUtility.textBlackColorOfProject),
                              ),
                            )),
                            Expanded(
                                child: PngImages(
                                    pngName: ImageItems().donaterInfoSticker,
                                    fitType: BoxFit.scaleDown)),
                            Expanded(
                                child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                LanguageItems()
                                    .donaterMainPageShowDonaterInfoCaption,
                                style: const TextStyle(
                                    color:
                                        ColorUtility.textBlackColorOfProject),
                              ),
                            )),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 40.0, bottom: 40.0),
                                child: CustomElevatedButton(
                                    text: 'Profil Bilgilerim',
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DonaterInfoView(
                                                  donationId: 4, //DEĞİŞEN KISIM
                                                )),
                                      );
                                    }),
                              ),
                            )
                          ],
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
