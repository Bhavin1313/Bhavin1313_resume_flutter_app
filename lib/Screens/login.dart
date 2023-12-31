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
          "Login Here",
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
            padding: EdgeInsets.all(10),
            height: 600,
            width: 350,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 300,
                  width: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://cdn.dribbble.com/users/527197/screenshots/15295153/media/fd7a8a9bfb90a33335cff2243c8bfa24.gif",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
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
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: "Enter Password",
                        hintStyle: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'home');
                  },
                  child: Container(
                    height: 50,
                    width: 260,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.5, 3),
                            color: Colors.grey,
                            blurRadius: 20,
                            spreadRadius: 3)
                      ],
                      borderRadius: BorderRadius.circular(30),
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
