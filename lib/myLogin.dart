import 'package:flutter/material.dart';
import 'package:loginsplashregister/reegister.dart';

void main() {
  runApp(mylogin());
}

class mylogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage("assets/ooybg.jpg"))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 30  , color: Colors.white),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(17.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "username",
                            labelText: "Username",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)))),
                        style: TextStyle(fontSize: 20, color: Colors.black54),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(13.0),
                      child: TextField(
                        obscuringCharacter: "*",
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "password",
                          labelText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      minWidth: 380,
                      height: 60,
                      onPressed: () {},
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(fontSize: 30),
                      ),
                      textColor: Colors.white,
                      color: Colors.blue,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
