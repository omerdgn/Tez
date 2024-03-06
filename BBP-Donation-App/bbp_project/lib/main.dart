import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kayıt Formu',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Başvuru Kayıt Formu'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("İsim"),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Örn: Umut Yusuf',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Soyisim"),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Çınar',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Numara"),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Örn: 542xxxxx',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Email"),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'ornekmail@gmail.com',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Adres"),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Metin Alanı 5 Girişi',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Tarih"),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '12.12.2000',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
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
                Text("Aktif OBS Kaydı"),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {}, // Boş callback metodu
              child: Text('Gönder'),
            ),
          ],
        ),
      ),
    );
  }
}
