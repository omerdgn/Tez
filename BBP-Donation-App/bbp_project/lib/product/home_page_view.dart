//Bu class ana sayfanın görüntüsünü ekrana çizdirmek için oluşturuldu

import 'package:bbp_project/product/language/languages.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key});

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
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF28246E),
                      ),
                      child: const Text(
                        LanguageItems.homePageViewHesapOlusturButtonText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11, // Metin boyutu
                        ),
                        textAlign: TextAlign.center, // Metin ortalaması
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF28246E),
                      ),
                      child: const Text(
                        LanguageItems.homePageViewGirisYapButtonText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11, // Metin boyutu
                        ),
                        textAlign: TextAlign.center, // Metin ortalaması
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF28246E),
                      ),
                      child: const Text(
                        LanguageItems.homePageViewBizKimizButtonText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11, // Metin boyutu
                        ),
                        textAlign: TextAlign.center, // Metin ortalaması
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF28246E),
                      ),
                      child: const Text(
                        LanguageItems.homePageViewIletisimButtonText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11, // Metin boyutu
                        ),
                        textAlign: TextAlign.center, // Metin ortalaması
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Bu kısımlardaki textler kalıcı olmayabilir
          //O yüzden şimdilik languages.dart kısmına almıyorum
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              child: Center(child: Text('BURAYA FOTOĞRAF GELECEK')),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: const Center(
                child: Text(
                  'BİLGİSAYARSIZLARI BİLGİSAYARLANDIRMA PROJESİ',
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: const Center(
                  child: Center(
                child: Text(
                  'Üniversitemizin bilgisayara sahip olabilmek için\nmaddi desteğe ihtiyaç duyan öğrencilerimize destek oluyoruz.\nHesap oluşturarak bağış yapabilir veya üniversitemizin öğrencisi olarak bilgisayar başvurusunda bulunabilirsiniz.',
                  textAlign: TextAlign.center,
                ),
              )),
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
              )),
            ),
          ),
        ],
      ),
    );
  }
}
