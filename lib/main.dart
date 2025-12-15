import 'package:assetwize_assignment/infrastructure/core/font_family_selector.dart';
import 'package:assetwize_assignment/presentation/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

TextTheme appTextTheme(String fontFamily) {
  return TextTheme(
    bodySmall: TextStyle(fontFamily: fontFamily, fontWeight: FontWeight.w400),
    bodyMedium: TextStyle(fontFamily: fontFamily, fontWeight: FontWeight.w500),
    bodyLarge: TextStyle(fontFamily: fontFamily, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(fontFamily: fontFamily, fontWeight: FontWeight.w600),
    titleLarge: TextStyle(fontFamily: fontFamily, fontWeight: FontWeight.w700),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: appFontFamily,
        textTheme: appTextTheme(appFontFamily),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ASSETWIZE',
                style: TextStyle(
                  fontFamily: appFontFamily,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'Nayra’s assets',
                style: TextStyle(
                  fontFamily: appFontFamily,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        body: HomePage(),
      ),
    );
  }
}
