// donation_page_view.dart
import 'package:bbp_project/local_database.dart';
import 'package:flutter/material.dart';
// local_database dosyanızın doğru yolunu belirleyin

class DonationPageView extends StatefulWidget {
  @override
  _DonationPageViewState createState() => _DonationPageViewState();
}

class _DonationPageViewState extends State<DonationPageView> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _donaterIdController = TextEditingController();
  final TextEditingController _donationAmountController =
      TextEditingController();
  final TextEditingController _donationDateController = TextEditingController();

  late LocalDatabase _localDatabase;

  @override
  void initState() {
    super.initState();
    _localDatabase = LocalDatabase();
  }

  @override
  void dispose() {
    _donaterIdController.dispose();
    _donationAmountController.dispose();
    _donationDateController.dispose();
    super.dispose();
  }

  Future<void> _addDonation() async {
    if (_formKey.currentState!.validate()) {
      await _localDatabase.addDataToDonationTable(
        donaterId: int.parse(_donaterIdController.text),
        donationAmount: int.parse(_donationAmountController.text),
        donationDate: _donationDateController.text,
      );

      // Gerekli alanları temizleyin
      _donaterIdController.clear();
      _donationAmountController.clear();
      _donationDateController.clear();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Bağış başarılı bir şekilde eklendi.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bağış Formu'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _donaterIdController,
                decoration: InputDecoration(
                    labelText: 'Bağışçı Aktiflik Onayı İçin 1 yazın'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen bağışçı aktiflik onayını doldurun';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _donationAmountController,
                decoration: InputDecoration(labelText: 'Bağış Miktarı'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen bağış miktarını girin';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _donationDateController,
                decoration:
                    InputDecoration(labelText: 'Bağış Tarihi (YYYY-MM-DD)'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen bağış tarihini girin';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _addDonation,
                child: Text('Bağışı Ekle'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
