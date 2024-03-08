//Bu class başvuru kayıt formu sayfasını ekrana çizdirmek için oluşturuldu

import 'package:flutter/material.dart';

class BasvuruKayitFormu extends StatelessWidget {
  const BasvuruKayitFormu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Başvuru Kayıt Formu'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
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
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Soyisim"),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Örn: Çınar',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          const Expanded(
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
          const Expanded(
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
          const SizedBox(height: 20),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Adres"),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Açık adresinizi giriniz',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Tarih"),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Örn: 12.12.2000',
                    ),
                  ),
                ),
              ],
            ),
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
    );
  }
}
