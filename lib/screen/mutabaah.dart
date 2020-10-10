import 'dart:ui';
import 'package:firebase_database/firebase_database.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:nif_mobile/screen/home.dart';
import 'package:nif_mobile/screen/profil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MutabaahScreen extends StatefulWidget {
  static const routeName = "/mutaba'ah";
  @override
  _MutabaahScreenState createState() => _MutabaahScreenState();
}

class _MutabaahScreenState extends State<MutabaahScreen> {
  static DateTime _now = DateTime.now();
  DateTime _dateMulai = _now;
  DateTime _dateAkhir = DateTime(_now.year, _now.month, _now.day + 6);
  SharedPreferences _sharedPreferences;

  List<Widget> _markCheckList = [
    Icon(
      Icons.check_circle,
      color: Colors.transparent,
    ),
    Icon(
      Icons.check_circle,
      color: Colors.green,
    ),
    Icon(
      Icons.cancel,
      color: Colors.red,
    ),
  ];

  List<String> _listIbadah = [
    'Sholat Subuh',
    'Sholat Dzuhur',
    'Sholat Ashar',
    'Sholat Maghrib',
    'Sholat Isya',
    'Sholat Sunah Rawatib',
    'Sholat Sunah Dhuha',
    'Sholat Sunah Tahajud',
    'Baca Al Quran',
    'Sedekah',
    'Istighfar + Sholawat',
  ];

  Map<String, List<int>> _checkListMutabaah = {
    'Sholat Subuh': [0, 0, 0, 0, 0, 0, 0],
    'Sholat Dzuhur': [0, 0, 0, 0, 0, 0, 0],
    'Sholat Ashar': [0, 0, 0, 0, 0, 0, 0],
    'Sholat Maghrib': [0, 0, 0, 0, 0, 0, 0],
    'Sholat Isya': [0, 0, 0, 0, 0, 0, 0],
    'Sholat Sunah Rawatib': [0, 0, 0, 0, 0, 0, 0],
    'Sholat Sunah Dhuha': [0, 0, 0, 0, 0, 0, 0],
    'Sholat Sunah Tahajud': [0, 0, 0, 0, 0, 0, 0],
    'Baca Al Quran': [0, 0, 0, 0, 0, 0, 0],
    'Sedekah': [0, 0, 0, 0, 0, 0, 0],
    'Istighfar + Sholawat': [0, 0, 0, 0, 0, 0, 0],
  };

  _showDatePicker(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: _dateMulai,
      firstDate: DateTime(2020),
      lastDate: DateTime(_now.year + 20),
    ).then((value) {
      if (value != null) {
        setState(() {
          _dateMulai = value;
          _dateAkhir = DateTime(value.year, value.month, value.day + 6);
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
  }

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
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Mutaba'ah",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Yuk pantau ibadah!",
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 16.0,
              right: 8.0,
            ),
            child: RaisedButton(
              color: Theme.of(context).primaryColorLight,
              onPressed: () {
                _showDatePicker(context);
              },
              child: Text('Pilih Tanggal'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 16.0,
              right: 8.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Mulai: ' + DateFormat.yMMMMd('id').format(_dateMulai),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Akhir: ' + DateFormat.yMMMMd('id').format(_dateAkhir),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 8.0,
              left: 16.0,
              top: 8.0,
            ),
            child: Table(
              border: TableBorder.all(width: 0.5),
              columnWidths: {0: FractionColumnWidth(.3)},
              children: [
                TableRow(
                  children: [
                    Text(
                      'Ibadah',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '1',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '2',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '3',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '4',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '5',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '6',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '7',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                _buildTableRowIbadah(indexIbadah: 0),
                _buildTableRowIbadah(indexIbadah: 1),
                _buildTableRowIbadah(indexIbadah: 2),
                _buildTableRowIbadah(indexIbadah: 3),
                _buildTableRowIbadah(indexIbadah: 4),
                _buildTableRowIbadah(indexIbadah: 5),
                _buildTableRowIbadah(indexIbadah: 6),
                _buildTableRowIbadah(indexIbadah: 7),
                _buildTableRowIbadah(indexIbadah: 8),
                _buildTableRowIbadah(indexIbadah: 9),
                _buildTableRowIbadah(indexIbadah: 10),
              ],
            ),
          ),
          Expanded(child: _buildPaddingBawah(context)),
        ],
      ),
    );
  }

  TableRow _buildTableRowIbadah({int indexIbadah}) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(_listIbadah[indexIbadah]),
        ),
        _buildGestureDetectorCheckList(
            index: 0, jenisIbadah: _listIbadah[indexIbadah]),
        _buildGestureDetectorCheckList(
            index: 1, jenisIbadah: _listIbadah[indexIbadah]),
        _buildGestureDetectorCheckList(
            index: 2, jenisIbadah: _listIbadah[indexIbadah]),
        _buildGestureDetectorCheckList(
            index: 3, jenisIbadah: _listIbadah[indexIbadah]),
        _buildGestureDetectorCheckList(
            index: 4, jenisIbadah: _listIbadah[indexIbadah]),
        _buildGestureDetectorCheckList(
            index: 5, jenisIbadah: _listIbadah[indexIbadah]),
        _buildGestureDetectorCheckList(
            index: 6, jenisIbadah: _listIbadah[indexIbadah]),
      ],
    );
  }

  GestureDetector _buildGestureDetectorCheckList(
      {int index, String jenisIbadah}) {
    return GestureDetector(
      onTap: () async {
        _sharedPreferences = await SharedPreferences.getInstance();
        await FirebaseDatabase.instance
            .reference()
            .child('mutabaahData')
            .child(_sharedPreferences.getString('email').replaceAll('.', '-'))
            .child(jenisIbadah)
            .child(_dateMulai
                .add(Duration(days: index))
                .toString()
                .substring(0, 10))
            .set(1);
        setState(() {
          _checkListMutabaah[jenisIbadah][index] = 1;
        });
      },
      onDoubleTap: () async {
        _sharedPreferences = await SharedPreferences.getInstance();
        await FirebaseDatabase.instance
            .reference()
            .child('mutabaahData')
            .child(_sharedPreferences.getString('email').replaceAll('.', '-'))
            .child(jenisIbadah)
            .child(_dateMulai
                .add(Duration(days: index))
                .toString()
                .substring(0, 10))
            .set(2);
        setState(() {
          _checkListMutabaah[jenisIbadah][index] = 2;
        });
      },
      onLongPress: () async {
        _sharedPreferences = await SharedPreferences.getInstance();
        await FirebaseDatabase.instance
            .reference()
            .child('mutabaahData')
            .child(_sharedPreferences.getString('email').replaceAll('.', '-'))
            .child(jenisIbadah)
            .child(_dateMulai
                .add(Duration(days: index))
                .toString()
                .substring(0, 10))
            .set(0);
        setState(() {
          _checkListMutabaah[jenisIbadah][index] = 0;
        });
      },
      child: _markCheckList[_checkListMutabaah[jenisIbadah][index]],
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => HomeScreen()));
                }),
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
