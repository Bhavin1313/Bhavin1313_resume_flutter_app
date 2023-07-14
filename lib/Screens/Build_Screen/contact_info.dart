import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class ContectInfo extends StatefulWidget {
  const ContectInfo({super.key});

  @override
  State<ContectInfo> createState() => _ContectInfoState();
}

class _ContectInfoState extends State<ContectInfo> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Globals.bgColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Globals.textColor,
          ),
        ),
        title: Text(
          "Resume Workspace",
          style: TextStyle(
            color: Globals.textColor,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Globals.bgColor,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Globals.initialIndex = 0;
                        });
                      },
                      child: Column(
                        children: [
                          Expanded(
                            flex: 15,
                            child: Container(
                              color: Globals.bgColor,
                              child: Center(
                                child: Text(
                                  "Contact",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Globals.textColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: (Globals.initialIndex == 0)
                                  ? Colors.yellow
                                  : Globals.bgColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Globals.initialIndex = 1;
                        });
                      },
                      child: Column(
                        children: [
                          Expanded(
                            flex: 15,
                            child: Container(
                              color: Globals.bgColor,
                              child: Center(
                                child: Text(
                                  "Photo",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Globals.textColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: (Globals.initialIndex == 1)
                                  ? Colors.yellow
                                  : Globals.bgColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: IndexedStack(
              index: Globals.initialIndex,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: h * .45,
                          width: w * .9,
                          color: Colors.blueGrey,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Icon(
                                      Icons.person,
                                      size: 35,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Name",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Icon(
                                      Icons.email,
                                      size: 35,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Email",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Icon(
                                      Icons.phone_android,
                                      size: 35,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Phone",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Icon(
                                      Icons.location_on,
                                      size: 35,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Address(Street,building)",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Address2",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Address3",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
