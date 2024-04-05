/// Bu class account_type_choosing_new_account_view ekranındaki Başvuru Hesabı textli butona tıklandığında
/// Başvuru hesabı kaydı yapılabilmek için oluşturuldu.

import 'package:bbp_project/product/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SignUpApplicantView extends StatefulWidget {
  const SignUpApplicantView({super.key});

  @override
  State<SignUpApplicantView> createState() => _SignUpApplicantViewState();
}

class _SignUpApplicantViewState extends State<SignUpApplicantView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
    );
  }
}
