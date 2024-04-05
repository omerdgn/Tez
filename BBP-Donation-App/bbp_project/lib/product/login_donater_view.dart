/// Bu class account_type_choosing_login_view ekranındaki Bağışçı Hesabı textli butona tıklandığında
/// Bağışçı hesabına giriş yapılabilmek için oluşturuldu.

import 'package:bbp_project/product/colors_utility.dart';
import 'package:bbp_project/product/custom_app_bar.dart';
import 'package:bbp_project/product/custom_elevated_button.dart';
import 'package:bbp_project/product/language/languages.dart';
import 'package:flutter/material.dart';

class LoginDonaterView extends StatefulWidget {
  const LoginDonaterView({super.key});

  @override
  State<LoginDonaterView> createState() => _LoginDonaterViewState();
}

class _LoginDonaterViewState extends State<LoginDonaterView> {
  // Şifrenin gösterilip gösterilmediğini izleyen bir değişken
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  child: Text(
                    LanguageItems().loginDonaterViewMainText,
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: LanguageItems().textFieldLabelTextForMail,
                    labelStyle: const TextStyle(
                        color: ColorUtility.textWhiteColorOfProject),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: ColorUtility.textWhiteColorOfProject),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: ColorUtility.textWhiteColorOfProject),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 25),
                child: TextField(
                  obscureText:
                      !_isPasswordVisible, // Şifre görünürlüğünü kontrol etmek için
                  decoration: InputDecoration(
                    labelText: LanguageItems().textFieldLabelTextForPassword,
                    labelStyle: const TextStyle(
                        color: ColorUtility.textWhiteColorOfProject),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: ColorUtility.textWhiteColorOfProject),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: ColorUtility.textWhiteColorOfProject),
                    ),
                    // Şifre görünürlüğünü kontrol eden bir suffixIcon ekleyin
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: ColorUtility.textWhiteColorOfProject,
                      ),
                      onPressed: () {
                        // _isPasswordVisible değişkenini tersine çevirerek şifrenin görünürlüğünü değiştirin
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: CustomElevatedButton(
                  text: LanguageItems.homePageViewGirisYapButtonText,
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextButton(
                  onPressed: () {
                    // Unutulan şifre işlemleri buraya eklenecek
                  },
                  child: Text(
                    LanguageItems().textForForgottenPasswordButton,
                    style: const TextStyle(
                      color: ColorUtility.appBarBackgroundColorOfProject,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
