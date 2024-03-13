///Bu class projeinin imajlarını tür ve yöntemlerine göre kullanımında
///bir standarda bağlı kalmak için oluşturuldu.

import 'package:flutter/material.dart';

class PngImages extends StatelessWidget {
  const PngImages({super.key, required this.pngName, required this.fitType});
  final String pngName;
  final BoxFit fitType;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/png/$pngName.png",
      fit: fitType,
    );
  }
}
