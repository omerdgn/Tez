import 'package:bbp_project/product/colors_utility.dart';
import 'package:bbp_project/product/custom_app_bar.dart';
import 'package:bbp_project/product/custom_elevated_button.dart';
import 'package:bbp_project/product/sign_up_donater_password_view.dart';
import 'package:flutter/material.dart';
import 'package:bbp_project/product/language/languages.dart';
import 'package:bbp_project/local_database.dart'; // Veritabanı erişimi için gerekli

class SignUpDonaterUsernameView extends StatefulWidget {
  @override
  _SignUpDonaterUsernameViewState createState() =>
      _SignUpDonaterUsernameViewState();
}

class _SignUpDonaterUsernameViewState extends State<SignUpDonaterUsernameView> {
  final TextEditingController _usernameController = TextEditingController();
  final LocalDatabase _localDatabase = LocalDatabase(); // Veritabanı nesnesi

  Future<void> _navigateToNextPage() async {
    String enteredUsername = _usernameController.text;

    // Kullanıcı adının veritabanında mevcut olup olmadığını kontrol et
    bool isUsernameTaken = await _isUsernameTaken(enteredUsername);

    if (isUsernameTaken) {
      // Kullanıcı adı mevcutsa, hata mesajı göster
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Bu kullanıcı adı daha önceden alınmış"),
        ),
      );
    } else {
      // Kullanıcı adı mevcut değilse, veritabanına kaydet ve diğer sayfaya geç
      await _saveUsername(enteredUsername);
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const SignUpDonaterPasswordView()),
      );
    }
  }

  // Kullanıcı adının veritabanında mevcut olup olmadığını kontrol eden fonksiyon
  Future<bool> _isUsernameTaken(String username) async {
    final db = await _localDatabase.database;
    final result = await db.query(
      "DonaterTable",
      where: "username = ?",
      whereArgs: [username],
    );
    return result.isNotEmpty;
  }

  // Kullanıcı adını veritabanına kaydeden fonksiyon
  Future<void> _saveUsername(String username) async {
    final db = await _localDatabase.database;
    // Varsayılan olarak donater kaydı ekleyelim ve son eklenen id'yi alalım.
    int id = await db.insert(
      "DonaterTable",
      {
        "username": username,
        "password": "", // Şifre henüz belirlenmediği için boş bırakıyoruz
      },
    );
    print("User added with id: $id");
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
                onPressed: _navigateToNextPage,
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
