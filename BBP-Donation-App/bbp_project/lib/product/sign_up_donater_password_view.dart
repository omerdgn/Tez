import 'package:bbp_project/product/colors_utility.dart';
import 'package:bbp_project/product/custom_app_bar.dart';
import 'package:bbp_project/product/custom_elevated_button.dart';
import 'package:bbp_project/product/language/languages.dart';
import 'package:flutter/material.dart';
import 'donater_main_page_view.dart';

class SignUpDonaterPasswordView extends StatefulWidget {
  const SignUpDonaterPasswordView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpDonaterPasswordViewState createState() =>
      _SignUpDonaterPasswordViewState();
}

class _SignUpDonaterPasswordViewState extends State<SignUpDonaterPasswordView> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordAgainController =
      TextEditingController();

  void _navigateToNextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DonaterMainPageView()),
    );
  }

  void _validateAndNavigate() {
    if (_passwordController.text == _passwordAgainController.text) {
      _navigateToNextPage();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(LanguageItems().passwordMismatchError),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              child: TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                    labelText: LanguageItems()
                        .signUpDonaterPasswordViewTextFieldLabelPasswordText,
                    labelStyle: const TextStyle(
                        color: ColorUtility.textWhiteColorOfProject),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorUtility.textWhiteColorOfProject))),
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              child: TextField(
                controller: _passwordAgainController,
                decoration: InputDecoration(
                    labelText: LanguageItems()
                        .signUpDonaterPasswordViewTextFieldLabelPasswordAgainText,
                    labelStyle: const TextStyle(
                        color: ColorUtility.textWhiteColorOfProject),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorUtility.textWhiteColorOfProject))),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomElevatedButton(
                onPressed: _validateAndNavigate,
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
