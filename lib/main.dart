import 'package:flutter/material.dart';
import 'package:meditation_app/src/screens/home.dart';

import 'src/utils/theme.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(),
      home: const Home(),
      darkTheme: darkThemeData(),
    );
  }
}
