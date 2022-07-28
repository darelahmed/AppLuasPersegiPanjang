import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LuasPersegiPanjang extends StatefulWidget {
  const LuasPersegiPanjang({Key? key}) : super(key: key);

  @override
  State<LuasPersegiPanjang> createState() => _LuasPersegiPanjangState();
}

int _panjang = 0;
int _lebar = 0;
int _luas = 0;

class _LuasPersegiPanjangState extends State<LuasPersegiPanjang> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('Luas Persegi Panjang'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Panjang',
              ),
              keyboardType: TextInputType.number,
              onChanged: (String str) {
                setState(() {
                  _panjang = int.parse(str);
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Lebar',
              ),
              keyboardType: TextInputType.number,
              onChanged: (String str) {
                setState(() {
                  _lebar = int.parse(str);
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 400,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      LuasPersegiPanjang();
                    });
                  },
                  child: Text('Hitung'),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(_luas.toString(),
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    ));
  }

  void LuasPersegiPanjang() {
    setState(() {
      _luas = _panjang * _lebar;
    });
  }
}
