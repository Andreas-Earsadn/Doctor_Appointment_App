import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'firebaseAuth.dart';

class Skip extends StatefulWidget {
  @override
  _SkipState createState() => _SkipState();
}

class _SkipState extends State<Skip> {
  List<PageViewModel> getpages() {
    return [
      PageViewModel(

        title: '',

        image: Image.asset(
          'assets/vector-doc.jpg',

          //fit: BoxFit.cover,
        ),
        //body: "Search Doctors",
        bodyWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Cari Dokter',
              style:
                  GoogleFonts.lato(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            Text(
              'Cari Dokter Terbaik Kami Disini',
              style: GoogleFonts.lato(
                  fontSize: 15,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
      PageViewModel(
        title: '',
        image: Image.asset(
          'assets/disease.png',
          //fit: BoxFit.cover,
        ),
        //body: "Search Doctors",
        bodyWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Telusuri Tentang Penyakit',
              style:
                  GoogleFonts.lato(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            Text(
              'Cari informasi tentang penyakit anda',
              style: GoogleFonts.lato(
                  fontSize: 15,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getpages(),
        showNextButton: false,
        showSkipButton: true,
        skip: SizedBox(
          width: 80,
          height: 48,
          child: Card(
            child: Center(
              child: Text(
                'Skip',
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.w900),
              ),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.white,
            shadowColor: Colors.blueGrey[100],
            elevation: 5,
          ),
        ),
        done: SizedBox(
          height: 48,
          child: Card(
            child: Center(
              child: Text(
                'Lanjutkan',
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.w900),
              ),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.blue[300],
            shadowColor: Colors.blueGrey[200],
            elevation: 5,
          ),
        ),
        onDone: () => _pushPage(context, FireBaseAuth()),
      ),
    );
  }

  void _pushPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => page),
    );
  }
}
