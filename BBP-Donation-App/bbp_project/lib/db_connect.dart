/*import 'dart:async';
import 'package:postgres/postgres.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  final conn = PostgreSQLConnection(
    '35.234.93.155', // PostgreSQL sunucusunun adresi
    5432, // PostgreSQL port numarası
    'donationDb', // Veritabanı adı
    username: 'postgres', // Kullanıcı adı
    password: 'bbpgoogle+', // Parola
  );
  
  try {
    await conn.open();
    debugPrint('Veritabanı bağlantısı başarılı.');
    
    try {
      await conn.query("INSERT INTO computer (id, delivery_date, given_person_id) VALUES (1, '2001-06-11', 5)");
      debugPrint('Veri başarıyla eklendi.');
    } catch (e) {
      debugPrint('Veri ekleme sırasında hata oluştu: $e');
    }
  } catch (e) {
    debugPrint('Bağlantı hatası: $e');
  } finally {
    await conn.close();
  }
}*/
