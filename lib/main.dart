import 'package:flutter/material.dart';
import 'package:nif_mobile/screen/home.dart';
import 'package:nif_mobile/screen/login.dart';
import 'package:nif_mobile/screen/mutabaah.dart';
import 'package:nif_mobile/screen/profil.dart';
import 'package:nif_mobile/screen/sign_up.dart';
import 'package:nif_mobile/screen/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NIF App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
        SplashScreen.routeName: (ctx) => SplashScreen(),
        SignUpScreen.routeName: (ctx) => SignUpScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
        MutabaahScreen.routeName: (ctx) => MutabaahScreen(),
        ProfilScreen.routeName: (ctx) => ProfilScreen(),
      },
    );
  }
}
