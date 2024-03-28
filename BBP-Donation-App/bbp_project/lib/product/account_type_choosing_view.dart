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
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Center(
                            child: Column(
                          children: [
                            Expanded(child: Text("dsgkdsjgkjgds")),
                            Expanded(
                              child: CustomElevatedButton(
                                  text: 'jdsgjdgj', onPressed: () {}),
                            )
                          ],
                        )),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Column(
                            children: [
                              Expanded(child: Text("safsfafsasf")),
                              Expanded(
                                  child: CustomElevatedButton(
                                      text: 'buton2', onPressed: () {}))
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
