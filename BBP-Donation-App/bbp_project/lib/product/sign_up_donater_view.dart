/// Bu class account_type_choosing_new_account_view ekranındaki Bağışçı Hesabı textli butona tıklandığında
/// Bağışçı hesabı kaydı yapılabilmek için oluşturuldu.

import 'package:bbp_project/product/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SignUpDonaterView extends StatefulWidget {
  const SignUpDonaterView({super.key});

  @override
  State<SignUpDonaterView> createState() => _SignUpDonaterViewState();
}

class _SignUpDonaterViewState extends State<SignUpDonaterView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
    );
  }
}
