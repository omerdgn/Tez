///Bu class uygulama açıldığında bizi karşılayan ana sayfayı
///ekrana çizdirilmek için oluşturuldu.

//color, margin, padding yapıları standartlaştırılacak
//arrow ikonlarının onPressed yapıları işe yarar hale getirilecek

import 'package:bbp_project/product/about_us_view.dart';
import 'package:bbp_project/product/account_type_choosing_login_view.dart';
import 'package:bbp_project/product/account_type_choosing_new_account_view.dart';
import 'package:bbp_project/product/colors_utility.dart';
import 'package:bbp_project/product/contact_us_view.dart';
import 'package:bbp_project/product/duration_utility.dart';
import 'package:bbp_project/product/image_items.dart';
import 'package:bbp_project/product/language/languages.dart';
import 'package:flutter/material.dart';
import 'custom_elevated_button.dart';
import 'custom_app_bar.dart';
import 'png_images.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);
  @override
  HomePageViewState createState() => HomePageViewState();
}

class HomePageViewState extends State<HomePageView> {
  static const int _numberOfComputersDonated = 0;
  //bu değişkenin tuttuğu veri daha sonra backend ile
  //db kullanılarak oluşturulup çekilecek

  final _pageController = PageController(viewportFraction: 0.9);

  static int get numberOfComputersDonated => _numberOfComputersDonated;

  //bu değişkenin tutacağı veri BACKENDDE oluşturulup fronta çekilecek
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
                  CustomElevatedButton(
                    text: LanguageItems.homePageViewHesapOlusturButtonText,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AccountTypeChoosingNewAccountView()),
                      );
                    },
                  ),
                  const SizedBox(width: 8),
                  CustomElevatedButton(
                    text: LanguageItems.homePageViewGirisYapButtonText,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AccountTypeChoosingLoginView()),
                      );
                    },
                  ),
                  const SizedBox(width: 8),
                  CustomElevatedButton(
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
                  CustomElevatedButton(
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
                  controller: _pageController,
                  children: [
                    PngImages(
                        pngName: ImageItems().campusPhoto1,
                        fitType: BoxFit.contain),
                    PngImages(
                        pngName: ImageItems().campusPhoto2,
                        fitType: BoxFit.contain),
                    PngImages(
                        pngName: ImageItems().campusPhoto3,
                        fitType: BoxFit.contain),
                    // Diğer fotoğrafları buraya ekleyin
                  ],
                ),
                Positioned(
                  left: 16,
                  child: IconButton(
                    onPressed: () {
                      _pageController.previousPage(
                          duration: DurationUtility().durationLow,
                          curve: Curves.ease);
                    },
                    icon: const Icon(Icons.chevron_left_sharp),
                  ),
                ),
                Positioned(
                  right: 16,
                  child: IconButton(
                    onPressed: () {
                      _pageController.nextPage(
                          duration: DurationUtility().durationLow,
                          curve: Curves.ease);
                    },
                    icon: const Icon(Icons.chevron_right_sharp),
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
                    color: ColorUtility.textWhiteColorOfProject,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PngImages(
                              pngName: ImageItems().homePageViewComputerIcon,
                              fitType: BoxFit.contain),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: PngImages(
                                pngName: ImageItems().homePageViewComputerIcon,
                                fitType: BoxFit.contain),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: PngImages(
                                pngName: ImageItems().homePageViewComputerIcon,
                                fitType: BoxFit.contain),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: PngImages(
                                pngName: ImageItems().homePageViewComputerIcon,
                                fitType: BoxFit.contain),
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
