///Bu class ana sayfadan giriş yap butonuna tıklandığında
///Hesap giriş türünü seçtirebilmek ve ekrana çizdirebilmek için oluşturuldu

import 'package:bbp_project/product/colors_utility.dart';
import 'package:bbp_project/product/custom_app_bar.dart';
import 'package:bbp_project/product/custom_elevated_button.dart';
import 'package:bbp_project/product/image_items.dart';
import 'package:bbp_project/product/language/languages.dart';
import 'package:bbp_project/product/login_applicant_view.dart';
import 'package:bbp_project/product/login_donater_view.dart';
import 'package:bbp_project/product/png_images.dart';
import 'package:flutter/material.dart';

class AccountTypeChoosingLoginView extends StatelessWidget {
  const AccountTypeChoosingLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: SizedBox(
                  child: Text(
                    LanguageItems().accountTypeChoosingLoginChoosingMainText,
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
                                    .accountTypeChoosingLoginApplicantAccountText,
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
                                  pngName: ImageItems().studentSticker,
                                  fitType: BoxFit.scaleDown),
                            )),
                            Expanded(
                                child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.00),
                              child: Text(
                                LanguageItems()
                                    .accountTypeChoosingLoginApplicantAccountCaption,
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
                                    text: 'Başvuru Hesabı',
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginApplicantView()),
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
                                    .accountTypeChoosingLoginDonatertAccountText,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        ColorUtility.textBlackColorOfProject),
                              ),
                            )),
                            Expanded(
                                child: PngImages(
                                    pngName: ImageItems().donateSticker,
                                    fitType: BoxFit.scaleDown)),
                            Expanded(
                                child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                LanguageItems()
                                    .accountTypeChoosingLogintDonaterAccountCaption,
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
                                    text: 'Bağışçı Hesabı',
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginDonaterView()),
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
