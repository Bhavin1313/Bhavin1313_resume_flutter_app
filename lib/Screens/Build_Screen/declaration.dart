import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class Declaration extends StatefulWidget {
  const Declaration({super.key});

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xffededed),
        appBar: AppBar(
          backgroundColor: Globals.bgColor,
          elevation: 0,
          centerTitle: true,
          toolbarHeight: 120,
          title: Text(
            "Declaration",
            style: TextStyle(
                color: Globals.textColor,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Globals.textColor,
            ),
          ),
          actions: [
            Switch(
              value: isTrue,
              onChanged: (val) {
                setState(() {
                  isTrue = val;
                });
              },
            ),
          ],
        ),
        body: (isTrue == true)
            ? Container()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: h * .7,
                      width: w * .9,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "🎯",
                            style: TextStyle(fontSize: 60),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            onSaved: (val) {
                              Globals.dis = val!;
                            },
                            decoration: const InputDecoration(
                                hintText: "Descripation",
                                border: OutlineInputBorder()),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(
                            thickness: 3,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Date"),
                              Text("Place(Interview\nVenue/city)"),
                            ],
                          ),
                          Row(
                            children: [
                              TextFormField(
                                keyboardType: TextInputType.datetime,
                                onSaved: (val) {
                                  Globals.date = val!;
                                },
                                decoration: const InputDecoration(
                                  hintText: "DD/MM/YYYY",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              TextFormField(
                                onSaved: (val) {
                                  Globals.city = val!;
                                },
                                decoration: const InputDecoration(
                                    hintText: "Eg.Surat",
                                    border: OutlineInputBorder()),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
        //   Center(
        //   child: Column(
        //     children: [
        //       Container(
        //         margin: EdgeInsets.only(top: 20),
        //         padding: EdgeInsets.all(10),
        //         height: h * .1,
        //         width: w * .9,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(10),
        //           color: Colors.white,
        //         ),
        //         child: Row(
        //           children: [
        //             Text(
        //               "Declaration",
        //               style: TextStyle(
        //                 fontSize: 22,
        //                 color: Colors.blue,
        //               ),
        //             ),
        //             Spacer(),
        //             Switch(
        //               value: isTrue,
        //               onChanged: (val) {
        //                 setState(() {
        //                   isTrue = val;
        //                 });
        //               },
        //             ),
        //             (isTrue == false)
        //                 ? Container()
        //                 : Column(
        //                     mainAxisAlignment: MainAxisAlignment.center,
        //                     children: [
        //                       Center(
        //                         child: Container(
        //                           height: h * .7,
        //                           width: w * .9,
        //                           color: Colors.white,
        //                           child: Column(
        //                             crossAxisAlignment: CrossAxisAlignment.start,
        //                             children: [
        //                               Switch(
        //                                 value: isTrue,
        //                                 onChanged: (val) {
        //                                   setState(() {
        //                                     isTrue = val;
        //                                   });
        //                                 },
        //                               ),
        //                               const Text(
        //                                 "🎯",
        //                                 style: TextStyle(fontSize: 60),
        //                               ),
        //                               const SizedBox(
        //                                 height: 10,
        //                               ),
        //                               TextFormField(
        //                                 onSaved: (val) {
        //                                   Globals.dis = val!;
        //                                 },
        //                                 decoration: const InputDecoration(
        //                                     hintText: "Descripation",
        //                                     border: OutlineInputBorder()),
        //                               ),
        //                               const SizedBox(
        //                                 height: 5,
        //                               ),
        //                               const Divider(
        //                                 thickness: 3,
        //                               ),
        //                               const Row(
        //                                 mainAxisAlignment:
        //                                     MainAxisAlignment.spaceBetween,
        //                                 children: [
        //                                   Text("Date"),
        //                                   Text("Place(Interview\nVenue/city)"),
        //                                 ],
        //                               ),
        //                               Row(
        //                                 children: [
        //                                   TextFormField(
        //                                     keyboardType: TextInputType.datetime,
        //                                     onSaved: (val) {
        //                                       Globals.date = val!;
        //                                     },
        //                                     decoration: const InputDecoration(
        //                                       hintText: "DD/MM/YYYY",
        //                                       border: OutlineInputBorder(),
        //                                     ),
        //                                   ),
        //                                   TextFormField(
        //                                     onSaved: (val) {
        //                                       Globals.city = val!;
        //                                     },
        //                                     decoration: const InputDecoration(
        //                                         hintText: "Eg.Surat",
        //                                         border: OutlineInputBorder()),
        //                                   ),
        //                                 ],
        //                               ),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                     ],
        //                   )
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
