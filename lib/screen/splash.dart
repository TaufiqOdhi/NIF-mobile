import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nif_mobile/screen/login.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<Timer> _loadData() async {
    return new Timer(Duration(seconds: 3), _onDoneLoading);
  }

  _onDoneLoading() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (ctx) => LoginScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Theme.of(context).primaryColorDark,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
                child: Container(
                    height: MediaQuery.of(context).size.width / 2,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Image.asset('assets/Ngaji Is Fun Logo White.png'))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  '@ngajiisfun',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
