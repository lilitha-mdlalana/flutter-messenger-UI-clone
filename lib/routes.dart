import 'package:flutter/material.dart';

import 'screens/home.dart';
import 'screens/splash.dart';

var appRoutes = {
  '/': (context) => const SplashScreen(),
  '/home': (context) => HomeScreen(),
};
