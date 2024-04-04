import 'package:bbp_project/product/colors_utility.dart';
import 'package:bbp_project/product/custom_app_bar.dart';
import 'package:bbp_project/product/custom_elevated_button.dart';
import 'package:bbp_project/product/image_items.dart';
import 'package:bbp_project/product/language/languages.dart';
import 'package:bbp_project/product/png_images.dart';
import 'package:flutter/material.dart';

class AccountTypeChoosingView extends StatelessWidget {
  const AccountTypeChoosingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                child: SizedBox(
                  child: Text(
                    LanguageItems.accountTypeChoosingMainText,
                    style: TextStyle(fontSize: 25),
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
                            const Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(top: 40.0),
                              child: Text(
                                LanguageItems
                                    .accountTypeChoosingApplicantAccountText,
                                style: TextStyle(
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
                            const Expanded(
                                child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.00),
                              child: Text(
                                LanguageItems
                                    .accountTypeChoosingApplicantAccountCaption,
                                style: TextStyle(
                                    color:
                                        ColorUtility.textBlackColorOfProject),
                              ),
                            )),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 40.00, bottom: 40.0),
                                child: CustomElevatedButton(
                                    text: 'Başvuru Hesabı', onPressed: () {}),
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
                            const Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(top: 40.0),
                              child: Text(
                                LanguageItems
                                    .accountTypeChoosingDonatertAccountText,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        ColorUtility.textBlackColorOfProject),
                              ),
                            )),
                            Expanded(
                                child: PngImages(
                                    pngName: ImageItems().donateSticker,
                                    fitType: BoxFit.scaleDown)),
                            const Expanded(
                                child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                LanguageItems
                                    .accountTypeChoosingDonaterAccountCaption,
                                style: TextStyle(
                                    color:
                                        ColorUtility.textBlackColorOfProject),
                              ),
                            )),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 40.0, bottom: 40.0),
                                child: CustomElevatedButton(
                                    text: 'Bağışçı Hesabı', onPressed: () {}),
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
