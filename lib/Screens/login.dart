import 'package:flutter/material.dart';
import 'package:resume_app/utils/globals.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Globals.textColor,
      appBar: AppBar(
        backgroundColor: Globals.bgColor,
        title: Text(
          "Sign in",
          style: TextStyle(
            color: Globals.textColor,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            height: 600,
            width: 300,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSPNFbGEC05jhCsuQVcspLSxrvxsxTovSraw&usqp=CAU",
                    ),
                    fit: BoxFit.cover,
                  )),
                ),
                SizedBox(
                  height: 90,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: "Enter Email",
                    hintStyle: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: Globals.off1,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          Globals.off1 = !Globals.off1;
                        });
                      },
                      icon: (Globals.off1)
                          ? Text(
                              "Show",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : Text(
                              "Hide",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: "Enter Password",
                    hintStyle: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'home');
                  },
                  child: Container(
                    height: 50,
                    width: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Globals.bgColor,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Globals.textColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
