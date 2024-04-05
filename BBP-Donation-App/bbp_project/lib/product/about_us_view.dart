/// Bu class home_page_view.dart ekranındaki Biz Kimiz isimli butona tıklandığında
/// Biz Kimiz sayfasını ekrana çizdirmek
/// ve projemiz hakkımızda bilgi vermek için oluşturuldu.

import 'package:bbp_project/product/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
    );
  }
}
