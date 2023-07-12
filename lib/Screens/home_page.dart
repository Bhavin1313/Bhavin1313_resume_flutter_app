import 'package:flutter/material.dart';
import 'package:resume_app/utils/globals.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Globals.bgColor,
        title: Text(
          "Resume Builder",
          style: TextStyle(
            color: Globals.textColor,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('build_options');
        },
        backgroundColor: Globals.bgColor,
        child: Icon(
          Icons.add,
          color: Globals.textColor,
        ),
      ),
      body: Column(
        children: [Container()],
      ),
    );
  }
}
