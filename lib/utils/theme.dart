import 'dart:math';

import 'package:flutter/material.dart';

final TextStyle drawwerText = TextStyle(fontSize: 16, color: Colors.white);

final TextStyle chipText = TextStyle(fontSize: 14, color: Colors.grey);

final TextStyle popularTitleText = TextStyle(fontSize: 14, color: Colors.black);

final TextStyle popularPriceText = TextStyle(fontSize: 18, color: Colors.white);
final TextStyle productTitleText = TextStyle(fontSize: 24, color: Colors.black);
final TextStyle optionsText = TextStyle(fontSize: 16, color: Colors.grey[700]);

//Colors

final Color activeColor = Color(0xFFfb7d7e);

final Color greyCustom = Colors.grey;

final Color bgColor = Color(0xFFf6f6f7);

final Color iconColor = Colors.black;

final Color titleColor = Colors.black;

Color randomColor(int index) {
  List colors = [
    Color(0xFFE23E57),
    Color(0xFF88304E),
    Color(0xFF0D7377),
    Color(0xFF769FCD),
    Color(0xFF14FFEC),
    Color(0xFFC3AED6),
    Color(0xFF8675A9),
    Color(0xFFE23E57),
    Color(0xFF7895B2),
    Color(0xFFF07B3F),
    Color(0xFF7D5A5A),
    Color(0xFFFF165D),
  ];

  return colors[index];
}
