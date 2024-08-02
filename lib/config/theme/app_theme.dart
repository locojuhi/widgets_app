import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pinkAccent
];

class AppTheme {
  final int selectedColor;

  AppTheme(
    {this.selectedColor = 0
  }): assert(selectedColor >= 0, 'Selected color must be greater than 0'),
      assert(selectedColor < colorList.length, 'Selected color must be les or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      centerTitle: false
    ),
    colorSchemeSeed: colorList[selectedColor]
  );

}