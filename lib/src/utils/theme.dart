import 'package:flutter/material.dart';

ThemeData lightThemeData() => ThemeData.light(useMaterial3: true).copyWith(
      scaffoldBackgroundColor: Colors.grey[300],
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.white),
          padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
          elevation: WidgetStatePropertyAll(0),
        ),
      ),
    );

ThemeData darkThemeData() => ThemeData.dark(useMaterial3: true).copyWith(
      scaffoldBackgroundColor: Colors.grey[300],
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.black),
          padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
          elevation: WidgetStatePropertyAll(0),
        ),
      ),
    );
