///Bu class başvuran kayıt formunu ekrana çizdirmek için oluşturuldu.

//telefonda klavye açıldığında oluşan ekran kayması düzeltilecek!!

import 'package:bbp_project/product/language/languages.dart';
import 'package:flutter/material.dart';

class ApplicantRegistrationForm extends StatelessWidget {
  const ApplicantRegistrationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text(LanguageItems.applicantRegistrationFormViewAppBarTitle),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const FormFieldWithLabel(
            labelText: LanguageItems.applicantRegistrationFormViewIsimLabelText,
            hintText: LanguageItems.applicantRegistrationFormViewIsimHintText,
          ),
          const SizedBox(height: 20),
          const FormFieldWithLabel(
            labelText:
                LanguageItems.applicantRegistrationFormViewSoyIsimLabelText,
            hintText:
                LanguageItems.applicantRegistrationFormViewSoyIsimHintText,
          ),
          const SizedBox(height: 20),
          const FormFieldWithLabel(
            labelText:
                LanguageItems.applicantRegistrationFormViewNumaraLabelText,
            hintText: LanguageItems.applicantRegistrationFormVieWNumaraHintText,
          ),
          const SizedBox(height: 20),
          const FormFieldWithLabel(
            labelText:
                LanguageItems.applicantRegistrationFormViewEmailLabelText,
            hintText: LanguageItems.applicantRegistrationFormViewEmailHintText,
          ),
          const SizedBox(height: 20),
          const FormFieldWithLabel(
            labelText:
                LanguageItems.applicantRegistrationFormViewAdresLabelText,
            hintText: LanguageItems.applicantRegistrationFormViewAdresHintText,
          ),
          const SizedBox(height: 20),
          const FormFieldWithLabel(
            labelText:
                LanguageItems.applicantRegistrationFormViewTarihLabelText,
            hintText: LanguageItems.applicantRegistrationFormViewTarihHintText,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
                  bool isChecked = false;

                  return Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  );
                },
              ),
              const Text(
                  LanguageItems.applicantRegistrationFormViewCheckBoxText),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text(LanguageItems
                .applicantRegistrationFormViewGonderElevatedButtonText),
          ),
        ],
      ),
    );
  }
}

class FormFieldWithLabel extends StatelessWidget {
  final String labelText;
  final String hintText;

  const FormFieldWithLabel({
    Key? key,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(labelText),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
