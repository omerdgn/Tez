/*///Bu class veri tabanını bağlamak için
///Ömer ve Samet tarafından deneme amaçlı oluşturuldu

import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kayıt Formu',
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  bool _isActiveOBS = false;

  PostgreSQLConnection? _connection;

  @override
  void initState() {
    super.initState();
    connectToDatabase();
  }

  void connectToDatabase() async {
    _connection = PostgreSQLConnection(
      'localhost',
      5432,
      'postgres',
      username: 'postgres',
      password: 'Kazim1',
    );

    await _connection!.open();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Başvuru Kayıt Formu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'İsim',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen ismi girin';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _surnameController,
                decoration: InputDecoration(
                  labelText: 'Soyisim',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen soyismi girin';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _phoneNumberController,
                decoration: InputDecoration(
                  labelText: 'Numara',
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen numarayı girin';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen emaili girin';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(
                  labelText: 'Adres',
                ),
                maxLines: null,
              ),
              TextFormField(
                controller: _dateController,
                decoration: InputDecoration(
                  labelText: 'Tarih',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen tarihi girin';
                  }
                  return null;
                },
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isActiveOBS,
                    onChanged: (value) {
                      setState(() {
                        _isActiveOBS = value!;
                      });
                    },
                  ),
                  Text("Aktif OBS Kaydı"),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _saveToDatabase();
                  }
                },
                child: Text('Gönder'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _saveToDatabase() async {
    try {
      await _connection!.query('''
        INSERT INTO kayitlar (isim, soyisim, numara, email, adres, tarih, obs_kaydi_aktif)
        VALUES (@isim, @soyisim, @numara, @email, @adres, @tarih, @obs_kaydi_aktif)
      ''', substitutionValues: {
        'isim': _nameController.text,
        'soyisim': _surnameController.text,
        'numara': _phoneNumberController.text,
        'email': _emailController.text,
        'adres': _addressController.text,
        'tarih': _dateController.text,
        'obs_kaydi_aktif': _isActiveOBS,
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Kayıt başarıyla eklendi')),
      );

      _resetForm();
    } catch (e) {
      print('Hata: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Kayıt eklenirken bir hata oluştu')),
      );
    }
  }

  void _resetForm() {
    _formKey.currentState!.reset();
    _nameController.clear();
    _surnameController.clear();
    _phoneNumberController.clear();
    _emailController.clear();
    _addressController.clear();
    _dateController.clear();
    setState(() {
      _isActiveOBS = false;
    });
  }

  @override
  void dispose() {
    _connection?.close();
    super.dispose();
  }
}*/
