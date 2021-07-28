import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleep_app/constants/constants.dart';
import 'package:sleep_app/services/audioPlayer.dart';

import 'homePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadMusic();
    Timer(Duration(seconds: 5), () => pushNavigator(context, HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(80),
                ),
              ),
              child: Center(
                child: Text(
                  "Sleep App",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 40,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
