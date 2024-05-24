import 'package:flutter/material.dart';
import './donater_view_model.dart';

class DonaterView extends DonaterViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bu buton projedeki ihtiyaca göre güncellenecek
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          saveModel();
        },
      ),
      body: Card(
        elevation: 20,
        child: buildCenterWidget,
      ),
    );
  }

  Widget get buildCenterWidget {
    return Center(
      child: buildWrapInputBody,
    );
  }

  Widget get buildWrapInputBody {
    return Wrap(
      runSpacing: 10,
      children: [
        TextField(
            onChanged: (value) => donaterModel.name = value,
            decoration: const InputDecoration(
                hintText: "Ad", border: OutlineInputBorder())),
        TextField(
            onChanged: (value) => donaterModel.surname = value,
            decoration: const InputDecoration(
                hintText: "Soyad", border: OutlineInputBorder())),
        TextField(
            onChanged: (value) => donaterModel.phoneNum = value,
            decoration: const InputDecoration(
                hintText: "Telefon Numarası", border: OutlineInputBorder())),
        TextField(
            onChanged: (value) => donaterModel.eMail = value,
            decoration: const InputDecoration(
                hintText: "E mail", border: OutlineInputBorder())),
        TextField(
            onChanged: (value) => donaterModel.donaterUserName = value,
            decoration: const InputDecoration(
                hintText: "Hesaba Giriş İçin Kullanıcı Adı Oluştur",
                border: OutlineInputBorder())),
        TextField(
            onChanged: (value) => donaterModel.donaterPassword = value,
            decoration: const InputDecoration(
                hintText: "Hesaba Giriş İçin Şifre Oluştur",
                border: OutlineInputBorder())),
      ],
    );
  }
}
