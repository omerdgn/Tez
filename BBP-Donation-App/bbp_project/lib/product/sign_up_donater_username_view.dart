/// Bu class account_type_choosing_new_account_view ekranındaki Bağışçı Hesabı textli butona tıklandığında
/// Bağışçı hesabı kaydı yapılırken kullanıcı adı oluşturma ekranı için oluşturuldu.

import 'package:bbp_project/product/colors_utility.dart';
import 'package:bbp_project/product/custom_app_bar.dart';
import 'package:bbp_project/product/custom_elevated_button.dart';
import 'package:bbp_project/product/sign_up_donater_password_view.dart';
import 'package:flutter/material.dart';
import 'package:bbp_project/product/language/languages.dart';

class SignUpDonaterUsernameView extends StatefulWidget {
  @override
  _SignUpDonaterUsernameViewState createState() =>
      _SignUpDonaterUsernameViewState();
}

class _SignUpDonaterUsernameViewState extends State<SignUpDonaterUsernameView> {
  final TextEditingController _usernameController = TextEditingController();

  void _navigateToNextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUpDonaterPasswordView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                  labelText: LanguageItems()
                      .signUpDonaterUsernameViewTextFieldLabelText,
                  labelStyle: const TextStyle(
                      color: ColorUtility.textWhiteColorOfProject),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: ColorUtility.textWhiteColorOfProject))),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomElevatedButton(
                onPressed:
                    _navigateToNextPage, //burası daha sonra if ile koşullandırılacak
                text:
                    LanguageItems().textForSignUpDonaterUsernameViewNextButton,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
