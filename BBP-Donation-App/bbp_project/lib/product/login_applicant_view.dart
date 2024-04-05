/// Bu class account_type_choosing_login_view ekranındaki Başvuru Hesabı textli butona tıklandığında
/// Başvuru hesabına giriş yapılabilmek için oluşturuldu.

import 'package:bbp_project/product/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LoginApplicantView extends StatefulWidget {
  const LoginApplicantView({super.key});

  @override
  State<LoginApplicantView> createState() => _LoginApplicantViewState();
}

class _LoginApplicantViewState extends State<LoginApplicantView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
    );
  }
}
