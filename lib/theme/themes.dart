import 'package:flutter/material.dart';

const darkTheme = MyTheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFECE00),
  secondary: Color(0xFF2C314A),
  background: Color(0xFF181A28),
  text: Colors.white,
  snack: Color(0xFFF5F7FB),
);

const lightTheme = MyTheme(
  brightness: Brightness.light,
  primary: Color(0xFF8359E3),
  secondary: Color(0xFF061737),
  background: Colors.white,
  text: Color(0xFF000000),
  snack: Color(0xFF2C314A),
);

class MyTheme {
  final Brightness brightness;
  final Color primary;
  final Color secondary;
  final Color background;
  final Color text;
  static final Color disable = Colors.black.withOpacity(.32);
  static const Color chip = Color(0xFFF0EFFD);
  static const Color card = Colors.white;
  final Color snack;
  final String font = 'Gilroy';

  const MyTheme({
    required this.brightness,
    required this.primary,
    required this.secondary,
    required this.background,
    required this.text,
    required this.snack,
  });
}
