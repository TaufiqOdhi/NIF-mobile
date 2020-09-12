import 'package:flutter/material.dart';

class ProfilScreen extends StatefulWidget {
  static const routeName = '/profil';
  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Theme.of(context).primaryColorLight,
                child: _buildColumnAtas(),
              ),
            ),
            _buildColumnForm(context),
            Container(
              width: 70,
              child: RaisedButton(
                  child: Icon(Icons.save),
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColumnForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Complete Your Data',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 8.0),
            child: Text(
              'Place & Date of Born',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Container(
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10.0, 1.0, 10.0, 1.0),
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
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Country',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Container(
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10.0, 1.0, 10.0, 1.0),
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
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Regional',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Container(
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10.0, 1.0, 10.0, 1.0),
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
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Address',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Container(
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10.0, 1.0, 10.0, 1.0),
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
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Profession',
            ),
          ),
          Container(
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(10.0, 1.0, 10.0, 1.0),
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
        ],
      ),
    );
  }

  Widget _buildColumnAtas() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16.0),
          child: Row(
            children: [
              Text(
                'YOUR ',
                style: TextStyle(
                  fontSize: 20,
                ),
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
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 16.0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.account_circle,
                  size: 100,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.white, width: 2),
                        left: BorderSide(color: Colors.white, width: 2),
                        top: BorderSide(color: Colors.white, width: 2),
                      ),
                      // borderRadius: BorderRadius.only(
                      //   bottomLeft: Radius.circular(10),
                      //   topLeft: Radius.circular(10),
                      // ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Muhammad Arifin Taslim'),
                        Text('@marifintaslim'),
                        Text('Be Different'),
                        Text('Founder'),
                        Text('NIF Solo'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
