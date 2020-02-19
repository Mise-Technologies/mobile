import 'package:flutter/material.dart';

final ThemeData MiseThemeData = new ThemeData(
  brightness: Brightness.light,
  primarySwatch: MaterialColor(MiseColors.black[50].value, MiseColors.black),
  primaryColor: MiseColors.black[500],
  primaryColorBrightness: Brightness.light,
  accentColor: MiseColors.grey[500],
  accentColorBrightness: Brightness.light
);

const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF000000;

class MiseColors {
MiseColors._(); // this basically makes it so you can instantiate this class
static const Map<int, Color> black = const <int, Color> {
50: const Color(0xE0E0E0),
100: const Color(0xB3B3B3),
200: const Color(0x808080),
300: const Color(0x4D4D4D),
400: const Color(0x262626),
500: const Color(0x000000),
600: const Color(0x000000),
700: const Color(0x000000),
800: const Color(0x000000),
900: const Color(0x000000)
  };

static const Map<int, Color> grey = const <int, Color> {
50: const Color(0xFCFCFC),
100: const Color(0xF7F7F7),
200: const Color(0xF2F2F2),
300: const Color(0xEDEDED),
400: const Color(0xE9E9E9),
500: const Color(0xE5E5E5),
600: const Color(0xE2E2E2),
700: const Color(0xDEDEDE),
800: const Color(0xDADADA),
900: const Color(0xD3D3D3)
  };
}