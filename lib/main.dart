import 'package:flutter/material.dart';
import 'package:what_app/colors.dart';
import 'package:what_app/responsive/responsive.dart';
import 'package:what_app/screens/mobile_screen_layout.dart';
import 'package:what_app/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout()),
    );
  }
}
