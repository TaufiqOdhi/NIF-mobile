import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nif_mobile/screen/sign_up.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FirebaseAuth _auth;

  void _checkAuth() {
    _auth.authStateChanges().listen((User event) {}).cancel();
  }

  @override
  void initState() {
    super.initState();
    // Firebase.initializeApp().then((value) {
    //   _auth = FirebaseAuth.instance;
    //   _checkAuth();
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/login/1.1 Background.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.height / 4,
              child: Image.asset('assets/2.1-Logo-NIF.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome to',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'NIF APP',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: 'username/e-mail',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return "Tidak boleh kosong";
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 15,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key),
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          //hidePass = !hidePass;
                        });
                      },
                      child: Icon(Icons.remove_red_eye)),
                  hintText: 'password',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return "Tidak boleh kosong";
                  }
                  return null;
                },
                //obscureText: hidePass,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    child: Text('SIGN IN'),
                    color: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    onPressed: () {}),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                    child: Text('SIGN UP?'),
                    color: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => SignUpScreen()));
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
