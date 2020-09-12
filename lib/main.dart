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
        primaryColor: Color(0xfffed767),
        primaryColorLight: Color(0xffffd868),
        primaryColorDark: Color(0xffffb612),
        accentColor: Color(0xff323232),
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
