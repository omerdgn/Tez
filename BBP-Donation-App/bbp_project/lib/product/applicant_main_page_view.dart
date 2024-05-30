import 'package:bbp_project/product/applicant_info_view.dart';
import 'package:bbp_project/product/application_page_view.dart';
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

class ApplicantMainPageView extends StatefulWidget {
  const ApplicantMainPageView({super.key});

  @override
  State<ApplicantMainPageView> createState() => _ApplicantMainPageViewState();
}

class _ApplicantMainPageViewState extends State<ApplicantMainPageView> {
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
                    LanguageItems().applicantMainPageMainText,
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
                                    .applicantMainPageMakeApplicationTitle,
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
                                  pngName: ImageItems().applicationSticker,
                                  fitType: BoxFit.scaleDown),
                            )),
                            Expanded(
                                child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.00),
                              child: Text(
                                LanguageItems()
                                    .applicantMainPageMakeApplicationCaption,
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
                                    text: 'Başvuruda Bulun',
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ApplicationPageView()),
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
                                    .applicantMainPageShowApplicationStateTitle,
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
                                    .applicantMainPageShowApplicationStateCaption,
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
                                                ApplicantInfoView(
                                                  applicantId:
                                                      4, //DEĞİŞEN KISIM
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
