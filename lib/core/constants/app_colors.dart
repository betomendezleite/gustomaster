import 'package:flutter/material.dart';

/// Paleta de colores centralizada para GustoMaster.
/// Azul (#2B779F) es el color principal de marca y de textos.
/// /// Organizada por propósito y acompañada de los hexadecimales originales.

class AppColors {
  // === Neutros ===
  static const Color white = Colors.white; // #FFFFFF
  static const Color black = Colors.black; // #000000
  static const Color greyDark = Color(0xFF353434); // #353434
  static const Color lightGrey = Color(0xFFEBEBEB); // #EBEBEB
  static const Color grey = Color(0xFFF4F4F4); // #F4F4F4

  // === Primarios ===
  static const Color primary = Color(0xFF2B779F); // #2B779F
  static const Color primaryLight = Color(0xFF2EB7D2); // #2EB7D2

  // === Secundarios ===
  static const Color accent = Color(0xFFF4BB3E); // #F4BB3E
  static const Color accentDark = Color(0xFFD38C3D); // #D38C3D

  // === Estados ===
  static const Color success = Color(0xFF4CAF50); // #4CAF50
  static const Color error = Color(0xFFE04456); // #E04456
  static const Color errorDark = Color(0xFFB3394A); // #B3394A
  static const Color warning = Color(0xFFF4BB3E); // #F4BB3E
  static const Color warningDark = Color(0xFFD38C3D); // #D38C3D
  static const Color info = Color(0xFF2196F3); // #2196F3

  // === Alias semánticos ===
  static const Color background = grey; // #F4F4F4
  static const Color surface = lightGrey; // #EBEBEB
  static const Color textPrimary = primary; // #2B779F → texto principal
  static const Color textSecondary =
      greyDark; // #353434 → texto menos importante
  static const Color textOnPrimary = white; // #FFFFFF
  static const Color danger = error; // #E04456
}
