import 'package:bbp_project/product/colors_utility.dart';
import 'package:bbp_project/product/custom_app_bar.dart';
import 'package:bbp_project/product/custom_elevated_button.dart';
import 'package:bbp_project/product/language/languages.dart';
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
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: SizedBox(
                  child: Text(
                    LanguageItems.accountTypeChoosingMainText,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                          child: Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            const Expanded(
                                child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                LanguageItems
                                    .accountTypeChoosingApplicantAccountText,
                                style: TextStyle(
                                    color:
                                        ColorUtility.textBlackColorOfProject),
                              ),
                            )),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
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
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Bağışçı Hesabı",
                                  style: TextStyle(
                                      color:
                                          ColorUtility.textBlackColorOfProject),
                                ),
                              )),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomElevatedButton(
                                    text: 'Bağışçı Hesabı', onPressed: () {}),
                              ))
                            ],
                          ),
                        ),
                      ),
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
