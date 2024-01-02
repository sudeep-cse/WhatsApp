import 'package:flutter/material.dart';
import 'package:whatshapp/color.dart';
import 'package:whatshapp/responsive/responsive_layout.dart';
import 'package:whatshapp/screen/mobile_screen.dart';
import 'package:whatshapp/screen/web_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatshapp',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        MobileScreenLayout: MobileScreenLayout(),
        WebScreenLayout: WebScreenLayout(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
