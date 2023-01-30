import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "BUGÜN NE YESEM?",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({Key? key}) : super(key: key);

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;
  List<String> corbaAdlari = [
    "Mercimek ",
    "Tarhana ",
    "Tavuksuyu ",
    "Düğün ",
    "Yoğurt "
  ];

  List<String> yemekAdlari = [
    "Karnıyarık ",
    "Mantı ",
    "Kuru Fasulye ",
    "İçli Köfte ",
    "Izgara Balık "
  ];

  List<String> tatliAdlari = [
    "Kadayıf ",
    "Baklava ",
    "Sütlaç ",
    "Kazandibi ",
    "Dondurma "
  ];

  void degistir() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: degistir,
                    child: Image.asset("assets/corba_$corbaNo.jpg"))),
          ),
          Text(
            corbaAdlari[corbaNo - 1] + "Çorbası",
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 250,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: degistir,
                    child: Image.asset("assets/yemek_$yemekNo.jpg"))),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 250,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: degistir,
                    child: Image.asset("assets/tatli_$tatliNo.jpg"))),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 250,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
