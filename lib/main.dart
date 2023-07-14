import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/Screens/Build_Screen/contact_info.dart';
import 'package:resume_app/Screens/build_options.dart';
import 'package:resume_app/Screens/splash_screen.dart';

import 'Screens/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/': (context) => Splash(),
        'home': (context) => HomePage(),
        'build': (context) => BuildOptions(),
        'contact_info': (context) => ContectInfo(),
      },
    ),
  );
}
