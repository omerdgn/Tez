import 'package:bbp_project/local_database.dart';
import 'package:flutter/material.dart';
// local_database dosyanızın doğru yolunu belirleyin

class ApplicationPageView extends StatefulWidget {
  @override
  _ApplicationPageViewState createState() => _ApplicationPageViewState();
}

class _ApplicationPageViewState extends State<ApplicationPageView> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _phoneNumController = TextEditingController();
  final TextEditingController _eMailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _isActiveObsController = TextEditingController();
  final TextEditingController _isApplicationResultPositiveController =
      TextEditingController();
  final TextEditingController _applicationDateController =
      TextEditingController();

  late LocalDatabase _localDatabase;

  @override
  void initState() {
    super.initState();
    _localDatabase = LocalDatabase();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _surnameController.dispose();
    _phoneNumController.dispose();
    _eMailController.dispose();
    _addressController.dispose();
    _isActiveObsController.dispose();
    _isApplicationResultPositiveController.dispose();
    _applicationDateController.dispose();
    super.dispose();
  }

  Future<void> _addApplicant() async {
    if (_formKey.currentState!.validate()) {
      await _localDatabase.addDataToApplicantsTable(
        name: _nameController.text,
        surname: _surnameController.text,
        phoneNum: _phoneNumController.text,
        eMail: _eMailController.text,
        address: _addressController.text,
        isActiveObs: int.parse(_isActiveObsController.text),
        isApplicationResultPositive:
            _isApplicationResultPositiveController.text.isNotEmpty
                ? int.parse(_isApplicationResultPositiveController.text)
                : null,
        applicationDate: _applicationDateController.text,
      );

      // Gerekli alanları temizleyin
      _nameController.clear();
      _surnameController.clear();
      _phoneNumController.clear();
      _eMailController.clear();
      _addressController.clear();
      _isActiveObsController.clear();
      _isApplicationResultPositiveController.clear();
      _applicationDateController.clear();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Başvuru başarılı bir şekilde eklendi.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Başvuru Formu'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'İsim'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen isminizi girin';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _surnameController,
                decoration: InputDecoration(labelText: 'Soyisim'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen soyisminizi girin';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _phoneNumController,
                decoration: InputDecoration(labelText: 'Telefon Numarası'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen telefon numaranızı girin';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _eMailController,
                decoration: InputDecoration(labelText: 'E-posta'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen e-posta adresinizi girin';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Adres'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen adresinizi girin';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _isActiveObsController,
                decoration: InputDecoration(
                    labelText: 'Aktif Obs Kaydı Var mı? (1: Evet, 0: Hayır)'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen aktif obs durumunu girin';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _isApplicationResultPositiveController,
                decoration: InputDecoration(
                    labelText:
                        'Örgün öğretim üyesi misin? (Opsiyonel, 1: Evet, 0: Hayır)'),
              ),
              TextFormField(
                controller: _applicationDateController,
                decoration:
                    InputDecoration(labelText: 'Başvuru Tarihi (YYYY-MM-DD)'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen başvuru tarihini girin';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _addApplicant,
                child: Text('Başvuruyu Ekle'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
