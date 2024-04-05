import 'package:bbp_project/product/colors_utility.dart';
import 'package:bbp_project/product/home_page_view.dart';
import 'package:bbp_project/product/language/languages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: LanguageItems.mainTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              backgroundColor: ColorUtility.appBarBackgroundColorOfProject,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              titleTextStyle: TextStyle(
                color: Colors.white,
                overflow: TextOverflow.clip,
              ),
              toolbarTextStyle:
                  TextStyle(color: ColorUtility.textWhiteColorOfProject))),
      home: const HomePageView(),
    );
  }
}
