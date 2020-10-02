import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nif_mobile/screen/mutabaah.dart';
import 'package:nif_mobile/screen/profil.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          _buildRowAtas(context),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Theme.of(context).primaryColorLight,
                      child: Icon(
                        Icons.question_answer,
                        size: 50,
                      ),
                    ),
                    Text('Question\n& Answer'),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Theme.of(context).primaryColorLight,
                      child: Icon(
                        Icons.archive,
                        size: 50,
                      ),
                    ),
                    Text("Al Qur'an"),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Theme.of(context).primaryColorLight,
                      child: Icon(
                        Icons.account_balance,
                        size: 50,
                      ),
                    ),
                    Text('Pray Times'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => MutabaahScreen()));
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Theme.of(context).primaryColorLight,
                        child: Icon(
                          Icons.list,
                          size: 50,
                        ),
                      ),
                    ),
                    Text("Mutaba'ah"),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Theme.of(context).primaryColorLight,
                      child: Icon(
                        Icons.cloud,
                        size: 50,
                      ),
                    ),
                    Text("Tips & Tricks"),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Theme.of(context).primaryColorLight,
                      child: Icon(
                        Icons.date_range,
                        size: 50,
                      ),
                    ),
                    Text('NIF Event'),
                  ],
                ),
              ],
            ),
          ),
          _buildPaddingLastRead(context),
          _buildPaddingTanggal(),
          _buildPaddingBawah(context),
        ],
      ),
    );
  }

  Padding _buildPaddingBawah(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 16.0, bottom: 8.0, left: 16.0, right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).accentColor,
            ),
            child: IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).accentColor,
            ),
            child: IconButton(
                icon: Icon(
                  Icons.question_answer,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).accentColor,
            ),
            child: IconButton(
                icon: Icon(
                  Icons.archive,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).accentColor,
            ),
            child: IconButton(
                icon: Icon(
                  Icons.account_balance,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).accentColor,
            ),
            child: IconButton(
                icon: Icon(
                  Icons.list,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => MutabaahScreen()));
                }),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).accentColor,
            ),
            child: IconButton(
                icon: Icon(
                  Icons.cloud,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).accentColor,
            ),
            child: IconButton(
                icon: Icon(
                  Icons.date_range,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
        ],
      ),
    );
  }

  Padding _buildPaddingTanggal() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 3),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '24 March 2020',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Subuh',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Terbit',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Dzuhur',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Ashar',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Maghrib',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Isya'",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildPaddingLastRead(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        decoration: BoxDecoration(
          border:
              Border.all(color: Theme.of(context).primaryColorLight, width: 3),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Last Read',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                'Surah Al-Baqoroh (Sapi B..) 2:157',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildRowAtas(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
              icon: Icon(Icons.dehaze),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => ProfilScreen()));
              }),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColorLight,
              border: Border.all(
                color: Theme.of(context).primaryColorLight,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Ngaji Is Fun App',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 8.0, left: 8.0, bottom: 8.0, right: 4.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).primaryColorLight,
            ),
            child: IconButton(
                icon: Icon(
                  Icons.email,
                ),
                onPressed: () {
                  Firebase.initializeApp().then((value) async {
                    await FirebaseAuth.instance.signOut();
                  });
                }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 8.0, right: 8.0, bottom: 8.0, left: 4.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).primaryColorLight,
            ),
            child: IconButton(
                icon: Icon(
                  Icons.notifications,
                ),
                onPressed: () {}),
          ),
        ),
      ],
    );
  }
}
