import 'package:flutter/material.dart';
import 'package:nif_mobile/screen/home.dart';
import 'package:nif_mobile/screen/profil.dart';

class MutabaahScreen extends StatefulWidget {
  static const routeName = "/mutaba'ah";
  @override
  _MutabaahScreenState createState() => _MutabaahScreenState();
}

class _MutabaahScreenState extends State<MutabaahScreen> {
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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 25,
            ),
            _buildRowAtas(context),
            SizedBox(
              height: 20,
            ),
            Text(
              "Mutaba'ah",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Text(
              "Yuk pantau ibadah!",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 16.0,
                right: 8.0,
              ),
              child: Row(
                children: [
                  Expanded(child: Text('Mulai:')),
                  Expanded(child: Text('Akhir:')),
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
                border: TableBorder.all(width: 0.25),
                columnWidths: {0: FractionColumnWidth(.3)},
                children: [
                  TableRow(
                    children: [
                      Text('Ibadah'),
                      Text('1'),
                      Text('2'),
                      Text('3'),
                      Text('4'),
                      Text('5'),
                      Text('6'),
                      Text('7'),
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
            _buildPaddingBawah(context),
          ],
        ),
      ),
    );
  }

  TableRow _buildTableRowIbadah({int indexIbadah}) {
    return TableRow(
      children: [
        Text(_listIbadah[indexIbadah]),
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
      onTap: () {
        setState(() {
          _checkListMutabaah[jenisIbadah][index] = 1;
        });
      },
      onDoubleTap: () {
        setState(() {
          _checkListMutabaah[jenisIbadah][index] = 2;
        });
      },
      onLongPress: () {
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
