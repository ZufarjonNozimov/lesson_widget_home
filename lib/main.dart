import 'package:flutter/material.dart';
import 'package:lesson_beginner_widget/pages/home/home_page.dart';
import 'package:lesson_beginner_widget/pages/home/other_pages/page_1.dart';
import 'package:lesson_beginner_widget/pages/home/other_pages/page_2.dart';
import 'package:lesson_beginner_widget/pages/home/other_pages/page_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: HomePage.route,
      routes: {
        HomePage.route:(context) =>  HomePage(),
        PageOne.route:(context) =>const PageOne(),
        PageTwo.route:(context) => const PageTwo(),
        PageThree.route:(context) => const PageThree(),
      },
    );
  }
}

