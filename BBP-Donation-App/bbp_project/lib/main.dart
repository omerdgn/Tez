import 'package:bbp_project/product/home_page_view.dart';
import 'package:bbp_project/product/application_registration_form_view.dart';
import 'package:bbp_project/product/language/languages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: LanguageItems.mainTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              backgroundColor: Color.fromRGBO(
                  178, 27, 10, 1), //colorlar için bir class yapılacak
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              titleTextStyle: TextStyle(
                color: Colors.white,
                overflow: TextOverflow.clip,
              ),
              toolbarTextStyle: TextStyle(color: Colors.white))),
      home: const HomePageView(),
    );
  }
}
