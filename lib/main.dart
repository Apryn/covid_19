import 'package:covid_19/screen/Info/info_screen.dart';
import 'package:covid_19/screen/home/home_screen.dart';
import 'package:covid_19/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Covid_19",
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme:
              const TextTheme(bodyText1: TextStyle(color: kBodyTextColor))),
      home: const HomeScreen(),
    );
  }
}
