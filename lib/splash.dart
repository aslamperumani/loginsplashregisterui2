import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loginsplashregister/myLogin.dart';
import 'package:loginsplashregister/reegister.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MySplash()));
}

class MySplash extends StatefulWidget {
  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  // @override
  // void initState(){
  //   Timer(Duration(seconds: 5), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MySplash())));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("assets/oobg.jpg"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image.asset("assets/iconse.png")
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Image(
                  image: NetworkImage(
                      "https://www.iconsdb.com/icons/preview/white/instagram-5-xxl.png"),
                  width: 125,
                  height: 125,
                ),
              ),
              Text(
                "Version 2.0",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),

              Padding(
                padding: const EdgeInsets.all(14.0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  minWidth: 340,
                  height: 80,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => mylogin()));
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 34),
                  ),
                  textColor: Colors.white,
                  color: Colors.deepPurple,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(14.0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(color: Colors.white)),
                  minWidth: 340,
                  height: 80,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => mYhome()));
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(fontSize: 34),
                  ),
                  textColor: Colors.white,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
