///Bu class uygulama açıldığında bizi karşılayan ana sayfayı
///ekrana çizdirilmek için oluşturuldu

import 'package:bbp_project/product/language/languages.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.homePageViewAppBarTitle),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customElevatedButton(
                    text: LanguageItems.homePageViewHesapOlusturButtonText,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8),
                  customElevatedButton(
                    text: LanguageItems.homePageViewGirisYapButtonText,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8),
                  customElevatedButton(
                    text: LanguageItems.homePageViewBizKimizButtonText,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8),
                  customElevatedButton(
                    text: LanguageItems.homePageViewIletisimButtonText,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              child: const Center(child: Text('BURAYA FOTOĞRAF GELECEK')),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: const Center(
                child: Text(
                  LanguageItems.homePageViewProjectNameTitle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: const Center(
                child: Text(
                  LanguageItems.homePageViewProjectDescriptionParagraph,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              child: const Center(
                child: Text(
                  'BURAYA TOPLAMDA KAÇ BİLGİSAYAR VERİLDİĞİ GELECEK',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget customElevatedButton({
  required String text,
  required VoidCallback onPressed,
}) {
  return Expanded(
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF28246E),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 11,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
