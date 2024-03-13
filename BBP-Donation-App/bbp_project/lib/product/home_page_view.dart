///Bu class uygulama açıldığında bizi karşılayan ana sayfayı
///ekrana çizdirilmek için oluşturuldu

//Bazı yapılar için o yapılara özgü dosyalar oluşturulup OOP hedeflenecek
//color, margin, padding yapıları standartlaştırılacak
//arrow ikonlarının onPressed yapıları işe yarar hale getirilecek

import 'package:bbp_project/product/about_us_view.dart';
import 'package:bbp_project/product/account_type_choosing_view.dart';
import 'package:bbp_project/product/contact_us_view.dart';
import 'package:bbp_project/product/image_items.dart';
import 'package:bbp_project/product/language/languages.dart';
import 'package:bbp_project/product/login_view.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);
  @override
  HomePageViewState createState() => HomePageViewState();
}

class HomePageViewState extends State<HomePageView> {
  static int _numberOfComputersDonated = 0;
  //bu değişkenin tuttuğu veri daha sonra backend ile
  //db kullanılarak oluşturulup çekilecek

  static int get numberOfComputersDonated => _numberOfComputersDonated;

  //bu değişkenin tutacağı veri backendde oluşturulup fronta çekilecek
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AccountTypeChoosingView()),
                      );
                    },
                  ),
                  const SizedBox(width: 8),
                  customElevatedButton(
                    text: LanguageItems.homePageViewGirisYapButtonText,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginView()),
                      );
                    },
                  ),
                  const SizedBox(width: 8),
                  customElevatedButton(
                    text: LanguageItems.homePageViewBizKimizButtonText,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutUsView()),
                      );
                    },
                  ),
                  const SizedBox(width: 8),
                  customElevatedButton(
                    text: LanguageItems.homePageViewIletisimButtonText,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ContactUsView()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Stack(
              alignment: Alignment.center,
              children: [
                PageView(
                  children: [
                    PngImages(pngName: ImageItems().universityLogo),
                    PngImages(pngName: ImageItems().universityLogo),
                    PngImages(pngName: ImageItems().universityLogo),
                    PngImages(pngName: ImageItems().universityLogo),
                    PngImages(pngName: ImageItems().universityLogo),
                    // Diğer fotoğrafları buraya ekleyin
                  ],
                ),
                Positioned(
                  left: 16,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios_sharp),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
                Positioned(
                  right: 16,
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward_ios_sharp),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Expanded(
            flex: 0,
            child: Center(
              child: Text(
                LanguageItems.homePageViewProjectNameTitle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsetsDirectional.symmetric(horizontal: 10.00),
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
            child: Center(
              child: Column(
                children: [
                  //bu Card yapısı ileride OOP ye daha uygun hale getirilebilir
                  Card(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PngImages(
                            pngName: ImageItems().homePageViewComputerIcon,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: PngImages(
                              pngName: ImageItems().homePageViewComputerIcon,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: PngImages(
                              pngName: ImageItems().homePageViewComputerIcon,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: PngImages(
                              pngName: ImageItems().homePageViewComputerIcon,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Text(
                    LanguageItems
                        .homePageViewTextOfStudentCountHasDonatedComputer,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Align(
        alignment: Alignment.center,
        child: Row(
          children: [
            SizedBox(
              height: kToolbarHeight,
              child: Image.asset(
                "assets/png/${ImageItems().universityLogo}.png",
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 35),
            const Text(LanguageItems.homePageViewAppBarTitle),
          ],
        ),
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
        backgroundColor: Color(0xFF28246E),
        //Color(0xFF28246E),
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

class PngImages extends StatelessWidget {
  const PngImages({super.key, required this.pngName});
  final String pngName;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/png/$pngName.png",
      fit: BoxFit.contain,
    );
  }
}
