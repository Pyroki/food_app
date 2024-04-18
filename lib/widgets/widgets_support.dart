import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldtextfieldstyle() {
    return const TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Poppins');
  }

  static TextStyle headertextfieldstyle() {
    return const TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Poppins');
  }

  static TextStyle lighttextfieldstyle() {
    return const TextStyle(
        color: Colors.black38,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins');
  }

  static TextStyle semiboldttextfieldstyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins');
  }
}
