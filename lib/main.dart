import 'package:api_user/widget/bottom_navigation.dart';
import 'package:api_user/screen/photo_graph_screen.dart';
import 'package:api_user/screen/ui_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/bottom_navigation',
     routes: {
       '/ui_screen' :(context) => const UiScreen(),
       '/bottom_navigation' :(context) => const BottomNavigationScreen(),
       '/photo_graph_screen' :(context) => const PhotoGraphScreen(),
     },
    );
  }
}
