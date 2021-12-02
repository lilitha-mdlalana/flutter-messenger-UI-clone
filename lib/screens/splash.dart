import 'dart:async';
import 'dart:io';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, '/home');
      },
    );
  }

  static String assetName = 'assets/image/flutter-messenger.svg';
  final Widget svg = SvgPicture.asset(
    assetName,
    width: 150,
    height: 150,
    fit: BoxFit.cover,
    semanticsLabel: 'Messenger Logo',
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(child: svg),
    );
  }
}
