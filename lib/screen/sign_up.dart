import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nif_mobile/screen/home.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/signUp';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _nama = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();
  UserCredential _userCredential;
  bool _hidePass = true;
  bool _hideConfirmPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/login/1.1 Background.png'),
              fit: BoxFit.cover,
            )),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'CREATE ',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'ACCOUNT',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.account_circle,
                  size: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: TextFormField(
                      //textAlign: TextAlign.center,
                      controller: _nama,
                      decoration: InputDecoration(
                        hintText: 'fullname',
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: TextFormField(
                      //textAlign: TextAlign.center,
                      controller: _username,
                      decoration: InputDecoration(
                        hintText: 'username',
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: TextFormField(
                      //textAlign: TextAlign.center,
                      controller: _email,
                      decoration: InputDecoration(
                        // suffixIcon: Icon(
                        //   Icons.check_circle,
                        //   color: Colors.green,
                        // ),
                        hintText: 'e-mail',
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: TextFormField(
                      //textAlign: TextAlign.center,
                      obscureText: _hidePass,
                      controller: _password,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _hidePass = !_hidePass;
                            });
                          },
                          child: Icon(
                            Icons.remove_red_eye,
                            // Icons.check_circle,
                            // color: Colors.green,
                          ),
                        ),
                        hintText: 'password',
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: TextFormField(
                      //textAlign: TextAlign.center,
                      obscureText: _hideConfirmPass,
                      controller: _confirmPassword,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _hideConfirmPass = !_hideConfirmPass;
                            });
                          },
                          child: Icon(Icons.remove_red_eye
                              //Icons.check_circle,
                              //color: Colors.green,
                              ),
                        ),
                        hintText: 'confirm password',
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
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
                ),
                Container(
                  width: 70,
                  child: RaisedButton(
                      child: Icon(Icons.arrow_forward),
                      color: Theme.of(context).primaryColorLight,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      onPressed: () {
                        Firebase.initializeApp().then((value) async {
                          try {
                            _userCredential = await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                    email: _email.text,
                                    password: _password.text);
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                HomeScreen.routeName,
                                (Route<dynamic> route) => false);
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  content: Text('minimal 6 karakter.'),
                                  title: Text(
                                    'password terlalu lemah !',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  actions: [
                                    RaisedButton(
                                      color: Theme.of(context).primaryColor,
                                      child: Text('kembali'),
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                    ),
                                  ],
                                ),
                              );
                              print('The password provided is too weak.');
                            } else if (e.code == 'email-already-in-use') {
                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: Text('email sudah terdaftar !'),
                                  actions: [
                                    RaisedButton(
                                      color: Theme.of(context).primaryColor,
                                      child: Text('kembali'),
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                    ),
                                  ],
                                ),
                              );
                              print(
                                  'The account already exists for that email.');
                            }
                          } catch (e) {
                            print(e.toString());
                          }
                        });
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
