import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color bgColorLightTop = const Color(0xFFD7DFE4);
Color bgColorLightBottom = const Color(0xFF7A7886);
Color bgColorDarkTop = const Color(0xFF62696E);
Color bgColorDarkBottom = const Color(0xFF2A1D29);

Color textColorDark = const Color(0xFF2A1D29);
Color textColorLight = const Color(0xFFD7DEF4);

Color themeColorLight = const Color(0xFF00B0A4);
Color themeColorDark = const Color(0xFF005855);

Gradient btnGradient = LinearGradient(
    colors: [Colors.black.withOpacity(0.7), Color(0xff091F05)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight);

Gradient beatGradient = LinearGradient(
  colors: [themeColorDark, themeColorLight],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
