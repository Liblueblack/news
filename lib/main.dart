import 'package:flutter/material.dart';
import 'package:news/auth/login.dart';
import 'package:news/auth/register.dart';
import 'package:news/auth/reset.dart';
import 'package:news/splashscreenpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreenPage.page,
      routes: {
        SplashScreenPage.page: (_) => SplashScreenPage(),
        LoginPage.page: (_) => LoginPage(),
        RegisterPage.page: (_) => RegisterPage(),
        ResetScreen.page: (_) => ResetScreen()
      },
    );
  }
}
