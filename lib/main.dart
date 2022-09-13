import 'package:flutter/material.dart';
import 'package:google_clone/const/color.dart';
import 'package:google_clone/responsive/mobile_screen_layout.dart';
import 'package:google_clone/responsive/responsive_layout.dart';
import 'package:google_clone/responsive/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webeScreenLayout: WebScreenLayout()),
    );
  }
}
