import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Theme.of(context).primaryColorLight,
                      child: Icon(
                        Icons.list,
                        size: 50,
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
                  Icons.cloud,
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
          child: IconButton(icon: Icon(Icons.dehaze), onPressed: () {}),
        ),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
              ),
              hintText: 'Search',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
            keyboardType: TextInputType.text,
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
                onPressed: () {}),
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
