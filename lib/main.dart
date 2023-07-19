import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/Screens/Build_Screen/contact_info.dart';
import 'package:resume_app/Screens/Build_Screen/references.dart';
import 'package:resume_app/Screens/build_options.dart';
import 'package:resume_app/Screens/login.dart';
import 'package:resume_app/Screens/splash_screen.dart';

import 'Screens/Build_Screen/education.dart';
import 'Screens/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/': (context) => Splash(),
        'login': (context) => LogIn(),
        'home': (context) => HomePage(),
        'build': (context) => BuildOptions(),
        'contact_info': (context) => ContectInfo(),
        'education': (context) => Education(),
        'references': (context) => References(),
      },
    ),
  );
}
